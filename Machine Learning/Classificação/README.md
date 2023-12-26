# Projeto de Classificação - Visão Geral
 - Realizar uma pequena análise dos dados e rodar modelos de classificação. Ao final, escolher o melhor modelo a partir dos resultados encontrados
 - O dataset indicava o valor 0 como tumeres malignos. Para melhor interpretação, tumores malignos são representados pelo 1 e tumores benignos pelo 0
 - PCA utilizado para visualizar os dados de forma bidimensional
 - Rodar os modelos e explicar cada hiperparâmetro que tenha sido modificado, e seu impacto no algoritmo

## Recursos utilizados
 - **Python**: 3.9.0
 - **Bibliotecas**: pandas, numpy, matplotlib, seaborn, sklearn
 - **Dataset**: breast_cancer da biblioteca sklearn

## Construção dos modelos
Primeiramente, utilizei o MinMaxScaler para colocar os dados na mesma escala e separei os dados em treino e teste de forma estratificada para manter a proporção original, com 30% para teste. 
Testei 4 modelos diferentes e utilizei a matriz de confusão, AUC, relatório de classificação e tempo de treino de cada modelo para a escolha final.
Os modelos utilizados foram:
 - Regressão Logística - Modelo base
 - Árvore de Classificação
 - SVC
 - KNN

## Performance dos modelos
O modelo de árvore de decisão performou muito abaixo dos outros, tendo as piores métricas de precision e recall e uma AUC bem menor. Dentre os outros modelos, o que obteve a melhor performance foi a regressão logística, onde apresentou valores de precision e recall altos e teve um tempo de treino baixo. A imagem abaixo mostra os valores da AUC de cada modelo.
![imagem11](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/20cd1dc1-8dbe-41a0-9df8-29003b5250a0)
