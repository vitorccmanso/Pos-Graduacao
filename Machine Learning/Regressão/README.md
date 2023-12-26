# Projeto de Regressão - Visão Geral
 - Realizar uma pequena análise dos dados e rodar modelos de regressão. Ao final, escolher o melhor modelo a partir dos resultados encontrados
 - Rodar os modelos e explicar cada hiperparâmetro que tenha sido modificado, e seu impacto no algoritmo

## Recursos utilizados
 - **Python**: 3.9.0
 - **Bibliotecas**: pandas, numpy, matplotlib, seaborn, sklearn
 - **Dataset**: california_housing da biblioteca sklearn

## Construção dos modelos
Primeiramente, utilizei o MinMaxScaler para colocar os dados na mesma escala e separei os dados em treino e teste com 30% para teste. 
Testei 7 modelos diferentes e utilizei MSE, RMSE, MAE, MAPE, R² e tempo de treino de cada modelo para a escolha final. Cada modelo foi otimizado utilizando o GridSearchCV ou RandomizedSearchCV.
Os modelos utilizados foram:
 - Regressão Linear - Modelo base
 - Lasso
 - Ridge
 - ElasticNet
 - Árvore de Regressão
 - SVR
 - KNN

## Performance dos modelos
os modelos de árvore e KNN obtiveram performances muito superiores em relação aos outros modelos testados. Como todas as suas métricas foram identicas, o tempo de treino do modelo tem um peso maior, e por conta disso, o modelo KNN é escolhido, tendo uma duração de treino 4 vezes menor que o modelo de árvore. A imagem abaixo mostra a tabela comparativa das métricas de cada modelo, ordenados pelo valor de R².
![imagem12](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/b46004a2-9b85-4724-81e3-85c7746492cf)
