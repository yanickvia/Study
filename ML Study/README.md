<h1>Machine Learning - AWS Certificate Study </h1>

#### From aws exam readness

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
