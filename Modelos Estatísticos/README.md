# Predição de vendas do Big Mart - Visão Geral
 - Uma análise completa do dataset foi realizada, com o objetivo final sendo a criação de um modelo que consiga prever as vendas
 - Tratamento de nulos em 2 colunas
 - Engenharia de variáveis realizada, categorizando o ID dos itens em 3 categorias
 - Modelos de regressão linear, lasso, ridge e árvore de decisão otimizados utilizando o GridSearchCV para encontrar o melhor modelo

## Recursos utilizados
 - **Python**: 3.9.0
 - **Bibliotecas**: pandas, numpy, matplotlib, seaborn, sklearn
 - **Dataset**: https://www.kaggle.com/datasets/brijbhushannanda1979/bigmart-sales-data?select=Train.csv

## Limpeza dos dados
Ao carregar e visualizar o dataset, foi possível perceber que as colunas 'Item_Weight' e 'Outlet_Size' possuiam valores nulos. Além disso, a coluna do ID de cada item podia ser categorizada em uma nova coluna com 3 categorias de produtos.
 - Tratamento de nulos utilizando tabelas pivot para encontrar a maior quantidade de relacionamento entre os dados na coluna 'Outlet_Size'
 - Tratamento de nulos a partir da substituição pela média na coluna 'Item_Weight', pois a distribuição da coluna era quase uma normal
 - A coluna 'Item_Visibility' possui muitos valores 0. Esses valores foram substituidos pelo valor da mediana da coluna
 - Criação da coluna 'Years_Active' para substituir a coluna 'Outlet_Establishment_Year'
 - As duas primeiras letras da coluna 'Item_Identifier' podem ser divididos em 3 categorias. A coluna 'Item_Category' foi criada representando os valores "FD": "Food", "DR": "Drink" e "NC": "Non-consumable"
 - Os valores da colunas 'Item_Fat_Content' foram reescritos para que a coluna tivesse apenas 2 categorias

## EDA
A EDA foi separada entre as colunas numéricas, categóricas, e as colunas que indicam o ano de criação da loja e o tempo que a loja está funcionnando. Abaixo estão alguns gráficos da EDA. Além disso, foi realizado um heatmap indicando a correlação das variáveis.
![imagem6](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/761960b6-798e-48f7-8a13-1a309835a750)
![imagem7](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/e63cbf24-b25b-4583-9d84-df5db78cf76e)
![imagem8](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/1a37f331-4c92-4655-97e5-913870991592)
![imagem9](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/a2bdfd9f-d1e6-4180-9d04-bbbf300758e2)

## Construção dos modelos
Primeiramente, realizei o OneHotEnconding das variáveis categóricas, utilizei o MinMaxScaler para colocar os dados na mesma escala e separei os dados em treino e teste, com 30% para teste. O MinMaxScaler foi utilizado pois os dados numéricos estavam muito distantes entre si, variando entre 0.016 até 12000.
Testei 4 modelos diferentes e utilizei MSE, RMSE, MAE e R² para avaliar os modelos entre si. 
Os modelos utilizados foram:
 - Regressão Linear - Modelo base
 - Lasso
 - Ridge
 - Árvore de Decisão - Outros modelos foram permitidos de serem utilizados, mesmo com a matéria se chamando 'modelos estatísticos' e cobrindo apenas os modelos de regressão logística e linear. A escolha desse modelo se deu pelo fato de terem muitas colunas com valores 0 ou 1

## Performance dos modelos
O modelo de Árvore de Decisão foi um pouco melhor em todas as métricas que os modelos lineares ao serem testados no conjunto de testes, após a otimização dos hiperparâmetros utilizando o GridSearchCV. A imagem abaixo mostra a tabela de resultados, ordenados a partir do R².
![imagem10](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/4031b06b-3cc5-457c-bd25-dc5a5e2fa84b)









