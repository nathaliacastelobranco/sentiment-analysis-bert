# Análise de sentimentos usando a arquitetura BERT / Redes neurais convolucionais (CNN)

Este projeto foi desenvolvido durante o estudo de processamento de linguagem natural com uso da arquitetura BERT. 

O código contém uma série de comentários sobre o desenvolvimento do projeto e eventuais decisões. 

* O arquivo ```model-development.py``` contém o desenvolvimento do modelo de machine learning e a construção da CNN. 
* O arquivo ```main.py``` recupera o modelo salvo e retorna a previsão. O mesmo foi desenvolvido para auxiliar na conexão com uma aplicação do streamlit. 
* O arquivo ```app.py``` contém a interface do data app desenvolvido via streamlit.

Para reproduzir este projeto, crie um ambiente virtual na sua máquina, ative, instale as dependências e rode o app streamlit localmente, conforme abaixo.

```
# Crie o ambiente virtual
python -m venv env

# Ative o ambiente virtual
env\Scripts\activate.bat

# Instale as dependências
pip install -r requirements.txt

# Rode o app do streamlit
streamlit run app.py
```
Vídeo da demonstração do data app: https://youtu.be/Og9U-t2JlZ4
![Funcionamento do data app](https://user-images.githubusercontent.com/65196779/184050747-7547e262-8a01-4cc9-bcfa-6f992a3d4a72.gif)
