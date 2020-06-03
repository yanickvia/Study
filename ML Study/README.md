<h1>Machine Learning - AWS Certificate Study </h1>

#### Informações retiradas do guia oficial do exame da AWS

> It will validate the candidate’s ability to
> - Select and justify the appropriate ML approach for a given business problem.
> - Identify appropriate AWS services to implement ML solutions.
> - Design and implement scalable, cost-optimized, reliable, and secure ML solutions.

---

#### Domains To study

>1. Domain 1: Data Engineering
>  - Create data repositories for machine learning.
>  - Identify and implement a data-ingestion solution.
>  - Identify and implement a data-transformation solution.

>2. Domain 2: Exploratory Data Analysis
>  - Sanitize and prepare data for modeling.
>  - Perform feature engineering.
>  - Analyze and visualize data for machine learning.

>3. Domain 3: Modeling
>  - Frame business problems as machine learning problems.
>  - Select the appropriate model(s) for a given machine learning problem.
>  - Train machine learning models.
>  - Perform hyperparameter optimization.
>  - Evaluate machine learning models.

>4. Domain 4: Machine Learning Implementation and Operations
>  - Build machine learning solutions for performance, availability, scalability, resiliency, and fault tolerance.
>  - Recommend and implement the appropriate machine learning services and features for a given problem.
>  - Apply basic AWS security practices to machine learning solutions.
>  - Deploy and operationalize machine learning solutions.


<h2>Ciclo de Vida - Machine Learning</h2>

- Processamento dos dados
    - Feature & Labels
    - Engenharia de Feature
    - Redução de Feature (Tirar dadps que não fazem sentido)
    - Encoding -> String para int, por ex.
    - Formatação -> Formato do arquivo
- Divisão dos dados
    - Treinameto -> 80% dos dados
    - Validação (opcional para validação cruzada)
    - Teste -> 20% dos dados
- Treinamento - Parte mais importante do ciclo
    - Usa os dados para treinar o modelo
- Teste
    - Verifica quão bem o modelo se "encaixa" (fit)
    - Overfit? ***Modelo se ajusta muito bem ao conjunto de dados anteriormente observado, mas se mostra ineficaz para prever novos resultados***
    - Usa os dados de teste separados na fase de Split, que nunca foram *vistos* antes
- Deploy 
    - Onde hospedar o modelo
    - Utilizar como Batch (lotes) ou como um serviço

- Infer: *Usar o modelo para inferir ou prever resultados*

<h3> Tipos de Algoritmos </h3>

- Supervisionado
    - O modelo se alimenta de informação para inferir sobre os dados futuros
- Não Supervisionado
    - O modelo procura por padrões/relações nos dados e tenta prever novas ocorrêcias
- Por recompensa
    - Aprende baseado nas ações escolhidas/efetuadas, recebendo recompensa por acerto.
    - Muita Tentativa e erro

<h3> Otimização </h3>

- Otimização
    - Soma dos quadrados vs A inclinação da linha
        - Linha no Gráfico 
        - Utiliza o _**O método do gradiente** que é um método numérico usado em otimização*_
            - Para encontrar um mínimo de uma função usa-se um esquema iterativo, onde em cada passo se toma a direção do gradiente, que corresponde à direção de declive máximo
            - Utilizado para otimizar diferentes tipos de algoritmos de ML
            - Possível ajustar o _Step Rate_ do método
            - _**Minimun Slope = Best Fit**_ Ou seja, o ponto mais baixo na curva é o ponto onde o modelo melhor se ajusta

- Regularização
    - Processo matemático, utiliza **regressão**
        - L1 (regressão Lasso)
        - L2 (regressão Ridge)

- Hiperparametro
    - Parâmetro externo que podemos utilizar
        - Learning Rate: Determina o tamanho do passo dado durante o método do gradiente(Gradient *Descent*)
        - Epochs: N° de vezes que o algoritmo irá processar a base de dado de treinamento
        - Batch Size: Divide os dados em lotes para treinar por vez; 32, 64, 128 lotes.

- Validação: Cross-Validation -> influencia o Modelo
    - Treinar com menos dados, e validar com um porção da base de treinamento
    - Repetir esse treinamento e validação com diferentes \*divisões\* de porções
    - K-Fold Cross-Validation - K = N° de conjuntos menores que o conjunto de dados de treinamento é dividido
    - Alguns algoritmos realizam o Cross-Validation por si só

