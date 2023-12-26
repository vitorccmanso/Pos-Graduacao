# Projeto de Clustering - Visão Geral 
 - Realizar uma pequena análise dos dados e rodar modelos de clustering. Ao final, escolher o melhor modelo a partir dos resultados encontrados
 - Metodologias do cotovelo e silhueta utilizadas para encontrar o melhor número de clusters
 - PCA utilizado para visualizar os resultados dos modelos

## Recursos utilizados
 - **Python**: 3.9.0
 - **Bibliotecas**: pandas, numpy, matplotlib, seaborn, sklearn
 - **Dataset**: diabetes da biblioteca sklearn

## Escolhendo o número ideal de clusters
Para escolher o número de clusters que cada modelo deveria criar, utilizei os métodos do cotovelo e silhueta. A partir disso, o número de clusters escolhido foi 3, pois a partir dele as diferenças do valor de inércia do método do cotovelo são basicamente constantes e ele possui a segunda maior pontuação no método da silhueta. A imagem abaixo mostra os gráficos que ilustram os resultados encontrados de ambos os métodos.
![imagem13](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/4a9761b1-f759-4b45-ba70-cca9afea0192)

## Construção dos modelos
Primeiramente, utilizei o StandardScaler para colocar os dados na mesma escala.
Testei 3 modelos diferentes e utilizei a visualização através do PCA para decidir qual o melhor modelo, assim como tabelas comparativas indicando as caracteristicas médicas de cada cluster gerado por cada modelo.
Os modelos utilizados foram:
 - KMeans
 - ÁAgglomerativeClustering
 - DBScan

## Performance dos modelos
Ao analisar os clusters gerados por cada modelo, nada chamou muito a atenção. Porém, ao utilizar o PCA para visualizar os dados, separando-os pelos clusters de cada modelo, foi possivel ver claramente que o modelo KMeans foi o único que conseguiu realizar uma boa separação dos dados, com os outros modelos possuindo muitos valores dentro das áreas dos outros clusters. A imagem abaixo mostra essa visualização dos resultados de cada modelo feita com o PCA.
![imagem14](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/7208978d-86e0-493a-a3ec-43576e6ff12c)
