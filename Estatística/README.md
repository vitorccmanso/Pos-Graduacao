# Análise exploratória de informações gerais da área de dados - Visão Geral 
 - Foi realizada uma EDA a partir do dataset selecionado, com o foco principal nos salários
 - Engenharia de variáveis realizada, categorizando os títulos dos trabalhos informados
 - Biblioteca pycountry utilizada para melhor ligibilidade das colunas com nomes de paises
 - Mudança dos valores das colunas 'employment_type' e 'experience_level' para melhor interpretação

## Recursos utilizados
 - **Python**: 3.9.0
 - **Bibliotecas**: pandas, numpy, matplotlib, seaborn, plotly, pycountry
 - **Dataset**: https://www.kaggle.com/datasets/ruchi798/data-science-job-salaries

## Limpeza dos dados
Ao carregar e visualizar o dataset, foi possível perceber que não possuia dados nulos e que algumas colunas poderiam ser melhoradas para uma melhor interpretação durante a EDA.
 - Coluna 'experience_level' teve seus valores alterados. "SE": "Senior", "MI": "Intermediate", "EN": "Junior", "EX": "Executive"
 - Coluna 'employment_type' também teve seus valores alterados. "FT": "Full-Time", "PT": "Part-Time", "CT": "Contractor", "FL": "Freelancer"
 - Códigos de paises que estavam no estilo ISO 3166 foram alterados para o estilo alpha_3 da biblioteca pycountry para melhor legibilidade
 - Os trabalhos listados na coluna 'job_title' foram agrupados em 6 categorias na nova colunas 'job_category'

## EDA
Durante o processo da EDA, foram explorados tópicos como salários, quais categorias de trabalho mais dominam o mercado, se houve ou não um aumento muito grande a partir de 2022 na área de dados, com várias vagas surgindo. Abaixo estão alguns gráficos interessantes que foram encontrados.
![imagem1](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/40bcf4d4-c9eb-4e4a-b05b-c6a98f72cb16)
![imagem2](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/638bc714-fb91-4a2a-9ef0-6d89f86ac7c9)
![imagem3](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/deec2b3e-8463-4a11-8d75-a880c41cab4f)
![imagem5](https://github.com/vitorccmanso/Pos-Graduacao/assets/129124026/fa8fcfc0-279d-4698-9b8c-dc474cbf6e79)
