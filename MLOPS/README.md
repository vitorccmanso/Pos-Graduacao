# Projeto MLOPS sobre saúde fetal - Visão Geral 
 - Projeto com objetivo de simular um ambiente de desenvolvimento profissional, com a meta de publicar o modelo para livre acesso através da Azure
 - Problema de classificação, onde deve-se classificar o feto em 3 classes: normal, suspeito, patológico
 - Utilização de versionamento, experimentos e registro de modelos através da biblioteca MLflow e da plataforma DagsHub
 - Biblioteca Pytest utilizada para realizar testes unitários no código desenvolvido, garantindo o pleno funcionamento do mesmo
 - Utilização da fastAPI para carregar o modelo registrado e escolhido e realizar predições com dados customizados pelo usuário
 - Biblioteca Locust utilizada para realizar um teste de carga no modelo, simulando 500 usuários
 - Uso do docker para criar imagem do projeto inteiro e utilização do DockerHub para armazenar essa imagem
 - Criação de um aplicativo web na Azure para o modelo poder ser acessado e qualquer um possa realizar previsões
 - [Link para acesso ao projeto](https://fetalhealth-api.azurewebsites.net/docs#) -> Aplicativo Web

## Recursos utilizados
 - **Python**: 3.9
 - **Bibliotecas**: fastapi, uvicorn, locust, mlflow, scikit-learn, pandas, matplotlib, pytest, pycodestyle, tensorflow, os
 - **Para utilizar o arquivo de requisitos**: `pip install -r requirements.txt`
 - **Para utilizar o arquivo de ambiente**: `conda env create -f environment.yml`

## Resultados
Utilizando o DagsHub e MLflow, foi possível realizar e salvar experimentos de modelos e acompanhar suas versões. Como o DagsHub fornece um usuário e senha para autmatizar o processo de rastreio e registro de modelos, esse processo foi totalmente automatizado. As imagens abaixo mostram o repositório do DagsHub com os experimentos e a interface do MLflow.

![imagem19](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/92a62484-a532-4d2e-a74b-d8311b1a0c69)
![imagem20](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/18ccc82d-9a3f-4bef-823f-f66d19038844)

Para utilizar a fastAPI, gerou-se um token através do DagsHub para ser usado exclusivamente com a API. A API criada carrega o modelo já registrado no MLflow e já o deixa pronto logo na sua inicialização, para não ter que repetir esse passo toda vez que o usuário solicitar uma predição. Além disso, criou-se uma classe com os parâmetros do dataset, onde o usuário pode alterar e realizar a predição com esses valores.
A página inicial da API é apenas uma mensagem indicando que o status da API é saudável, através do método GET, e como a fastAPI gera uma documentação das funções de cada método, o usuário basta digitar /docs que a interface irá aparecer. Para realizar a predição, criou-se a função predict usando o método post. As imagens abaixo mostram a tela inicial da saúde da API e a interface.

![imagem21](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/6bb1ef2a-792c-418a-b079-10962054cba0)
![imagem22](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/26847d2a-88aa-420d-8b2b-a2ce27f1d2f4)

Além disso, a biblioteca Locust foi utilizada apra realizar testes de carga no modelo, simulando 500 usuários solicitando predições, como mostram as imagens abaixo.

![imagem25](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/83f0b6c0-75a7-4bda-a18d-c2b040a34329)
![imagem26](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/020a5be4-6a33-4273-8e0a-2051d638d0bd)
![imagem27](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/b5e4d3ab-a15c-428d-98b6-0526ff86b222)

Para colocar isso em produção, foi necesário utilizar o docker e transformar todo o projeto em uma imagem. Com isso, foi feito um repositório no DockerHub onde essa imagem foi enviada, e foi feito um grupo de recursos no site da Azure e um aplicativo web. No aplicativo web, o código para produção deve ser a própria imagem docker que foi criada, que está armazenada no DockerHub. Ao realizar essa implementação, o projeto está online para qualquer um utilizar.

![imagem23](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/818b9977-49b1-4d0c-93ab-7a654ab17d02)
![imagem24](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/a629b3d7-7d6a-4576-8482-22ef08ef6be2)
![imagem28](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/3c9f7253-41fa-4a31-9c76-952bd8538a89)
![imagem29](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/f1911d07-06d8-4fea-8e23-ab8eeaf81c83)
