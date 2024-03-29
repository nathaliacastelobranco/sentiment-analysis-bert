# Required libraries
import numpy as np
import math
import re
import pandas as pd
from bs4 import BeautifulSoup
import random 
import seaborn as sns
import matplotlib.pyplot as plt

import tensorflow as tf 
import tensorflow_hub as hub 
# from tf.keras import layers 
import bert
# from tensorflow.keras.models import load_model


# Import dataset
cols = ['sentiment', 'id', 'date', 'query', 'user', 'text']

data_path = 'data\data_tweets.csv'
data = pd.read_csv(data_path,
                   header = None,
                   names = cols, 
                   engine='python',
                   encoding='latin1')

# Dataframe cleaning
data.drop(['id', 'date', 'query', 'user'],
          axis=1, inplace=True)

# Remove unnecessary characters
def clean_tweet(tweet):
  tweet = BeautifulSoup(tweet, 'lxml').get_text()  
  tweet = re.sub(r'@[A-Za-z0-9]+', ' ', tweet)
  tweet = re.sub(r'https?://[A-Za-z0-9./]+', ' ', tweet)
  tweet = re.sub(r"[^A-Za-z.!?']", ' ', tweet)
  tweet = re.sub(r' +', ' ', tweet)
  return tweet 

data_clean = [clean_tweet(tweet) for tweet in data.text]

# Change the classification numbers from 4 to 1
data_labels = data.sentiment.values
data_labels[data_labels == 4 ] = 1

# Tokenization phase
'''
    1º - Create tokenizer
    2º - Create bert layer based on BERT LARGE
    3º - Define the location of the vocabulary file
    4º - Lower all word cases
    5º - Define instance to tokenize and lower cases
'''
FullTokenizer = bert.bert_tokenization.FullTokenizer 
bert_layer = hub.KerasLayer('https://tfhub.dev/tensorflow/bert_en_uncased_L-24_H-1024_A-16/4', trainable=False)
vocab_file = bert_layer.resolved_object.vocab_file.asset_path.numpy() 
do_lower_case = bert_layer.resolved_object.do_lower_case.numpy() 
tokenizer = FullTokenizer(vocab_file, do_lower_case)

# Create encoder function
'''
    This function converts tokens to ids
'''
def encode_sentence(sent):
  return tokenizer.convert_tokens_to_ids(tokenizer.tokenize(sent))

# Create clean database
data_inputs = [encode_sentence(sentence) for sentence in data_clean]

data_with_len = [[sent, data_labels[i], len(sent)]
                 for i, sent in enumerate(data_inputs)]

# Mixing the data and maintaining tweets with more than 7 tokens
random.shuffle(data_with_len)
data_with_len.sort(key=lambda x: x[2]) 
sorted_all = [(sent_lab[0], sent_lab[1])
              for sent_lab in data_with_len if sent_lab[2] > 7] 

# Dataset for Tensorflow
all_dataset = tf.data.Dataset.from_generator(lambda: sorted_all,
                                             output_types = (tf.int32, tf.int32))

# Define global variables
BATCH_SIZE = 32
NB_BATCHES = len(sorted_all) // BATCH_SIZE
NB_BATCHES_TEST = NB_BATCHES // 10

# Insert padding (None means the exact size in the database)
all_batched = all_dataset.padded_batch(BATCH_SIZE, padded_shapes=((None,), ()))

# Mixing, separate test and train dataset
all_batched.shuffle(NB_BATCHES)
test_dataset = all_batched.take(NB_BATCHES_TEST)
train_dataset = all_batched.skip(NB_BATCHES_TEST)

# Convolutional Neural Network (CNN)
'''
    Activation funcion (filters/convolutional layers): RELU
    Activation function (last dense layer): SIGMOID OR SOFTMAX
'''
class DCNN(tf.keras.Model):

  def __init__(self,
               vocab_size,
               emb_dim=128,
               nb_filters = 50,
               FFN_units = 512, # dense layer size
               nb_classes=2,
               dropout_rate=0.1, 
               training=False,  
               name='dcnn'):
    super(DCNN, self).__init__(name=name)

    self.embedding = tf.keras.layers.Embedding(vocab_size, emb_dim) 

    # Convolutional layers
    self.bigram = tf.keras.layers.Conv1D(filters=nb_filters,
                                kernel_size=2,
                                padding='valid',   
                                activation='relu') 

    self.trigram = tf.keras.layers.Conv1D(filters=nb_filters,
                                kernel_size=3,
                                padding='valid',    
                                activation='relu') 

    self.fourgram = tf.keras.layers.Conv1D(filters=nb_filters,
                                kernel_size=4,
                                padding='valid',    
                                activation='relu') 
    
    # Pooling layer
    self.pool = tf.keras.layers.GlobalMaxPool1D() 

    # Dense layer
    self.dense_1 = tf.keras.layers.Dense(units=FFN_units, activation='relu')

    # Dropout layer
    self.dropout = tf.keras.layers.Dropout(rate=dropout_rate)

    if nb_classes == 2:
      self.last_dense = tf.keras.layers.Dense(units=1, activation='sigmoid') 
    else:
      self.last_dense = tf.keras.layers.Dense(units=nb_classes, activation='softmax')


  def call(self, inputs, training):
    x = self.embedding(inputs) 
    x_1 = self.bigram(x)
    x_1 = self.pool(x_1)
    x_2 = self.trigram(x)
    x_2 = self.pool(x_2)
    x_3 = self.fourgram(x)
    x_3 = self.pool(x_3)

    merged = tf.concat([x_1, x_2, x_3], axis=-1) 
    merged = self.dense_1(merged)
    merged = self.dropout(merged, training) 
    output = self.last_dense(merged)

    return output

# TRAINING PHASE
'''
    The training was made thought a Google Colab GPU for 5 epochs
'''

# Variables for training phase
VOCAB_SIZE = len(tokenizer.vocab)
EMB_DIM = 200
NB_FILTERS = 100 
FFN_UNITS = 256 
NB_CLASSES = 2
DROPOUT_RATE = 0.2
NB_EPOCHS = 5

# Initializing the CNN
Dcnn = DCNN(vocab_size=VOCAB_SIZE,
            emb_dim=EMB_DIM,
            nb_filters=NB_FILTERS,
            FFN_units=FFN_UNITS,
            nb_classes=NB_CLASSES,
            dropout_rate=DROPOUT_RATE)


# Compile the model
'''
    It was used Adam function as an optimizer
'''
if NB_CLASSES == 2:  
  Dcnn.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy']) 
else:
  Dcnn.compile(loss='sparse_categorical_crossentropy', optimizer='adam', metrics=['sparse_categorical_accuracy'])


# Verification for checkpoints
'''
    Here we recover the trained model
'''
checkpoint_path = 'checkpoint/'
ckpt = tf.train.Checkpoint(Dcnn=Dcnn)
ckpt_manager = tf.train.CheckpointManager(ckpt, checkpoint_path, max_to_keep=1)
if ckpt_manager.latest_checkpoint:
  ckpt.restore(ckpt_manager.latest_checkpoint)
  print('Latest checkpoint restored!')

# Function to recover the last epoch
class MyCustomCallBack(tf.keras.callbacks.Callback):
  def on_epoch_end(self, epoch, logs=None):
    ckpt_manager.save()
    print('Checkpoint saved at {}'.format(checkpoint_path)) 

# Here the CNN is actually trained for 5 epochs, however for this model I use a checkpoint
# history = Dcnn.fit(train_dataset,
#                    epochs=NB_EPOCHS,
#                    callbacks=[MyCustomCallBack()])
# results = Dcnn.evaluate(test_dataset)

# Restore the trained model
Dcnn_trained = tf.keras.models.load_model('sentiment-analysis-bert.h5')

# Prediction function
def get_prediction(sentence):
  tokens = encode_sentence(sentence)
  inputs = tf.expand_dims(tokens, 0) 

  output = Dcnn_trained(inputs, training=False) 

  sentiment = math.floor(output*2)

  if sentiment == 0:
    print('Oh, não! Sua frase é negativa. Está tudo bem? :sad:')
  elif sentiment == 1:
    print('Viva! Sua frase é positiva. :smile:')

  return sentiment

