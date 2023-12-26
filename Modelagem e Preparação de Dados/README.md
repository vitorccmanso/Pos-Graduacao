# Avaliação final para modelagem e preparação de dados - Visão Geral
 - Realizar todo o procedimento de limpeza e preparação dos dados para serem utilizados por um modelo de machine learning
 - Tratamento de nulos encontrando relação entre dados e preenchimento mantendo a proporcionalidade dos dados
 - Análises multivariadas através da criação de tabelas pivot
 - Ordinal Enconding e OneHot Enconding
 - Balanceamento de classes utilizando undersampling e oversampling
 - Utilização do PCA para visualização dos dados de forma bidimensional
 - Utilização do t-SNE para reduzir a dimensionalidade à 2 componentes

## Recursos utilizados
 - **Python**: 3.9.0
 - **Bibliotecas**: pandas, numpy, matplotlib, seaborn, sklearn, imblearn
 - **Dataset**: Provisionado junto do notebook da avaliação

## Limpeza dos dados
 - Tratamento de nulos realizado a partir da relação entre as colunas do dataset. Caso nenhuma relação pudesse ser identificada, os nulos eram preenchidos a partir da porporcionalidade dos dados da coluna, já que não era possível excluir esses dados
 - Ordinal Enconding aplicado na coluna 'education' a partir do dicionário criado fazendo relação entre essa coluna e a coluna 'education-num', que indicava a ordem correta para o enconding
 - Técnicas de udersampling e oversampling foram utilizadas. Para undersampling, o método .sample() foi utilizado e para oversampling, o SMOTE
 - PCA utilizado antes e depois de cada técnica de amostragem para visualização dos dados de forma bidimensional, podendo visualizar no gráfico onde estavam os dados antes das amostragens e como elas afetaram os dados
 - OneHot Enconding aplicado nas colunas 'race' e 'sex'. O resultado foi juntado às colunas numéricas do dataset.
 - Algoritmo t-SNE utilizado para reduzir a dimensionalidade do dataset em 2 dimensões
