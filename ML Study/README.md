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

---

> [Questões com respostas de exemplo - AWS](https://d1.awsstatic.com/training-and-certification/docs-ml/AWS-Certified-Machine-Learning-Specialty_Sample-Questions.pdf) 

---

<h3> Dicas de outras pesssoas</h3>

-   https://www.linkedin.com/pulse/how-prep-pass-aws-machine-learning-specialty-austin-tidmore/

-   https://medium.com/@javier.ramos1/aws-machine-learning-certification-exam-tips-2a7679a83e73

-   https://towardsdatascience.com/five-tips-for-passing-the-aws-machine-learning-specialty-exam-a2977654d324

---

<h1> Inicio das anotações sobre os estudos </h1>

<h2> Ciclo de Vida - Machine Learning </h2>

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

---

<h3> Sobre os Dados! </h3>

- Seleção e Engenharia de Recursos

    - Selecionar os dados relevantes para o treinamento do dado (Com cautela)
        - Remover dados que não fazem sentido (agiliza o processamento do algoritmo)
        - Ex: Nome da pessoa não influencia se ela gosta ou não de café
        - Correlação dos dados: Se todos os dados são parecidos ou iguais, não influenciaria no resultado 
        - Gaps e anomalias: Dados que não fazem sentido

    - Engenharia de recurso: Altura e idade estão relacionados
        - Dois campos são transformados em um só (menos dados para processar)
        - Novo campo = Altura/Idadde 
        - Se é uma boa ideia ou não, descobre testando

    - Engenharia de recurso: Uma data onde o importante é apenas a hora do dia
        - Seleciona apenas a parte das horas dessa data

    - Dicas para seleção de recursos
        - Usar o conhecimento do dominio para discartar recursos irrelevantes
        - Discartar recursos com correlação muito pequena com o dado sendo rotulado (inferido)
        - Discartar dado com variancia muito baixa
        - Discartar dados com muitos valores faltantes

    - Dicas para engenharia de Recursos
        - Simplificar recursos e remover informações irrelevantes
        - Padronizar os range dos valores dos dados entre os recursos
        - Tranformar o dado para se adequar ao modelo/problema
    

- PCA: Análise do Componente Principal
    - Como representar graficamente uma relação entre 5 ou mais dimensões? 
    - Usado para procurar por relações ou componentes principais de um conjunto de dados
    - Faz isso através de "redução de Dimensão"
        - Numa imagem 3D, tiramos uma foto dela e perdemos uma dimensão mas ainda teremos os principais componentes da imagem.
        - Dessa forma mantemos os componentes principais da imagem, mesmo discartando uma dimensão (dados)
    
    - Pontos para relembrar sobre o PCA
        - PCA é um algoritmo/modelo de ML não supervisionado
        - Normalmente é usado em um passo de pré-processamento dos dados
            - Pode ser usado para achar relaões entre os dados e então usar esses dados para treinar um outro modelo
            - Reduzindo as dimensões/dados que não fazem tanto sentido 
        - Existem tantos Componentes Principais quanto recursos ou valores nos dados
            - Pode-se escolher até quantos Componentes Principais os dados serão reduzidos
                - Ex: reduzir para 25% do total de Componentes principais total
        - PC1 e PC2 (Principal Componentes) são usados para construir um gráfico 2D para mostrar os grupos de recursos

- Dados Faltantes 
    - Calcular e colocar um valor no dado faltante (colocar a média?), ou
    - Remover o registro inteiro que o dado está faltante
    - Se tiver muitos registros com valores faltantes, talvez seja melhor remover o recurso todo (coluna)

- Dados Não Balanceados
    - Obter mais dados
    - Multiplicar os dados que estão insuficientes (forçar exemplos que acarretariam uma inferência correta
    - Sintetizar os dados (aplicar algumas possíveis alterações nos dados que acarretariam a inferência correta e adicionar ao conjunto de treinamento)
    - Tentar tipo de algoritmo diferente! 

- Rotular e Uma Codificação Quente
    - Trocar os valores tipo texto por inteiro
        - Fazer uma representação binária do valores
        - 4 valores diferentes de texto se tornariam 4 recursos (colunas) a mais nos dado
    - Algoritmos de ML usam números, usar troca de valores texto por númérico
    - Se não deveria ter uma relação entre os valores de um recurso, então usar o One Hot Encoding (representação binária)

- Divisão dos dados
    - Dados coletados durante um período
    - Dados coletados em lotes
    - Os dados podem ser mal divididos caso tenha uma ordem na coleta dos dados
        - Aleatorizar os dados para misturar-los suficientemente a ponto de não ter blocos de dados semelhantes
    - Conselho: **SEMPRE aleatorizar os dados**
    - Dados de treino 80%
        - dados de validação: Ver K-fold 
    - Dados de Teste 20%

- Formato do Arquivo: Record IO
    - Todas as imagens em um unico arquivo
        - Maior agilidade no treinamento e maior taxa de transferencia 
    - [Pipe Mode stream data](https://aws.amazon.com/pt/blogs/machine-learning/using-pipe-input-mode-for-amazon-sagemaker-algorithms/)
        - Seu conjunto de dados é transmitido diretamente para suas instâncias de treinamento, em vez de ser baixado primeiro
        - Isso significa que seus trabalhos de treinamento começam mais cedo, terminam mais rapidamente e precisam de menos espaço em disco
    - Amazon SageMaker funciona melhor com RecordIO
        - Streama os dados direto do S3
        - Instancias de treinos não precisam copiar os dados para o disco local
    

