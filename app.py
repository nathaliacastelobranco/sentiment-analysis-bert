import streamlit as st
from main import get_prediction

st.image('image.jpg', caption='Photo by @artbyhybrid from Unsplash')
st.title('Análise de sentimentos - BERT + CNN')
st.write('O objetivo deste projeto é identificar se uma frase em inglês representa um sentimento positivo ou negativo.')
st.write('O modelo possui acurácia de 82%.')

user_input = st.text_input('Insira uma frase em inglês:')

prediction_btn = st.button('Enviar', help='Descubra se sua frase é positiva ou negativa.')
# , on_click=get_prediction(user_input)

if prediction_btn or user_input:
    prediction = get_prediction(user_input)

    if prediction == 0:
        emotion = 'Negative'
        text = 'Oh, não! Sua frase é negativa. Está tudo bem? :cry:'
    elif prediction == 1:
        emotion = 'Positive'
        text = 'Viva! Sua frase é positiva. :smile:'

    st.write(text)

