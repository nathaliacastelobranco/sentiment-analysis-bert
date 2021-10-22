# Required libraries
import math
import re
import tensorflow as tf 
import tensorflow_hub as hub 
import bert
from tensorflow.keras.models import load_model

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


# Restore the trained model
Dcnn_trained = tf.keras.models.load_model('./saved_model/sentiment-analysis-bert')

# Prediction function
def get_prediction(sentence):
  tokens = encode_sentence(sentence)
  inputs = tf.expand_dims(tokens, 0) 

  output = Dcnn_trained(inputs, training=False) 

  sentiment = math.floor(output*2)

  if sentiment == 0:
    print('Oh, não! Sua frase é negativa. Está tudo bem? :cry:')
  elif sentiment == 1:
    print('Viva! Sua frase é positiva. :smile:')

  return sentiment
