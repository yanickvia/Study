><h1>Machine Learning - AWS Certificate Study </h1>

#### Informações retiradas do guia oficial do exame da AWS

> It will validate the candidate’s ability to
 - Select and justify the appropriate ML approach for a given business problem.
 - Identify appropriate AWS services to implement ML solutions.
 - Design and implement scalable, cost-optimized, reliable, and secure ML solutions.

---

#### Domains To study

>1. Domain 1: Data Engineering
  - Create data repositories for machine learning.
  - Identify and implement a data-ingestion solution.
  - Identify and implement a data-transformation solution.

>2. Domain 2: Exploratory Data Analysis
  - Sanitize and prepare data for modeling.
  - Perform feature engineering.
  - Analyze and visualize data for machine learning.

>3. Domain 3: Modeling
  - Frame business problems as machine learning problems.
  - Select the appropriate model(s) for a given machine learning problem.
  - Train machine learning models.
  - Perform hyperparameter optimization.
  - Evaluate machine learning models.

>4. Domain 4: Machine Learning Implementation and Operations
  - Build machine learning solutions for performance, availability, scalability, resiliency, and fault tolerance.
  - Recommend and implement the appropriate machine learning services and features for a given problem.
  - Apply basic AWS security practices to machine learning solutions.
  - Deploy and operationalize machine learning solutions.

---

>[Questões com respostas de exemplo - AWS](https://d1.awsstatic.com/training-and-certification/docs-ml/AWS-Certified-Machine-Learning-Specialty_Sample-Questions.pdf)

---

><h2> Dicas de outras pesssoas</h2>

-   https://www.linkedin.com/pulse/how-prep-pass-aws-machine-learning-specialty-austin-tidmore/

-   https://medium.com/@javier.ramos1/aws-machine-learning-certification-exam-tips-2a7679a83e73

-   https://towardsdatascience.com/five-tips-for-passing-the-aws-machine-learning-specialty-exam-a2977654d324

---

><h1> Inicio das anotações sobre os estudos </h1>

><h2> Ciclo de Vida - Machine Learning </h2>

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

---

><h2> Tipos de Algoritmos </h2>

- Supervisionado
    - O modelo se alimenta de informação para inferir sobre os dados futuros
- Não Supervisionado
    - O modelo procura por padrões/relações nos dados e tenta prever novas ocorrêcias
- Por recompensa
    - Aprende baseado nas ações escolhidas/efetuadas, recebendo recompensa por acerto.
    - Muita Tentativa e erro

---

><h2> Otimização </h2>

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

><h2> Sobre os Dados! </h2>

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

---    

><h2>Algoritmos de Machine Learning! </h2>

- Regressão logística
    >- *A regressão logística é uma técnica estatística que tem como objetivo produzir, a partir de um conjunto de observações, um modelo que permita a predição de valores tomados por uma variável categórica, frequentemente binária, a partir de uma série de variáveis explicativas contínuas e/ou binárias*
    - Algoritmo Supervisionado
    - Dados um conjunto de dados, procura por padrões nesse conjunto e sabe quais os resultados finais desejados
    - Usado para prever/inferir valores binários, label com dois possíveis resultados. Ex: Sim ou não, Azul ou verde, Homem ou mulher
    - Utiliza Função Sigmoid

- Regressão Linear
    >- *Regressão linear é uma equação para se estimar a condicional (valor esperado) de uma variável y, dados os valores de algumas outras variáveis x*
    - Algoritmo Supervisionado
    - Infere/prevê Valores numéricos - 1,2,3...

- Máquina de vetores de suporte (Support vector machine) SVM
    >- *Uma máquina de vetores de suporte é um conceito na ciência da computação para um conjunto de métodos de aprendizado supervisionado que analisam os dados e reconhecem padrões, usado para classificação e análise de regressão*
    - Algoritmo Supervisionado
    - Infere/prevê Calssificações - grupos de consumidores, classe média ou alta...
    - Margens entre categorias -> *hiperplano*
        - Um novo dado será categorizado baseado na divisão das margens + hiperplano

- Árvores de Decisões
    -  Usado para uma ampla gama de situações 
    - Algoritmos Supervisionado
    - Infere/prevê: 
        - Valores Binários
        - Valores numéricos
        - Classificações
    - Estrutura da árvore de decisão
        - Nó raiz (inicio)
        - Nó interno (intermediário)
        - Nó folha (Resultado inferido)
    - Cada vez que o algoritmo desce em direção às folhas, ele toma uma decisão lógica baseado na condição
    - Pode excluir alguma coluna que não tem correlação com a previsão/inferencia da Label desejada
        - O algoritmo pode realizar uma especie de seleção de recurso no final das contas

- Floresta Aleatória
    > - Florestas aleatórias ou florestas de decisão aleatória são um método de aprendizado conjunto para classificação, regressão e outras tarefas que operam construindo uma infinidade de árvores de decisão no momento do treinamento e gerando a classe que é o modo das classes ou a previsão média das árvores individuais
    - Algoritmos Supervisionado
    - Infere/prevê: 
        - Valores Binários
        - Valores numéricos
        - Classificações
    - seleciona aleatoriamente um numero N de features e calcula a correlação com a label analisada
        - Faz isso para mais features
        - Repete o procedimento várias vezes
    - Testa os modelos de cada árvore de decisão individualmente e qual for a decião mais predominante, se torna a escolhida da floresta

- K-Means
    >- Em mineração de dados, agrupamento k-means é um método de Clustering que objetiva particionar n observações dentre k grupos onde cada observação pertence ao grupo mais próximo da média.
    - Algoritmo Não Supervisionado
    - Infere/prevê Classificações
    - Usado para explorar os dados (encontrar grupos de tipos de consumidores)
    - K - Numero de classes que queremos que o algoritmo encontre
        - Variação total para escolher qual o modelo é mais correto (menor cariação = melhor classificação)
        - Melhor valor para o K?
            -  Redução na variação vs Clusters(k)
            - Elbow Plot (cotovelo do gráfico)

- K-ésimo Vizinho mais Próximo
    >-No reconhecimento de padrões, o algoritmo k-vizinhos mais próximos é um método não paramétrico usado para classificação e regressão. Nos dois casos, a entrada consiste nos k exemplos de treinamento mais próximos no espaço de recursos
    - Algoritmo Supervisionado
    - Infere/prevê Classificações
    - Verifica a qual classe o novo dado é mais próximo (considerando K como o número de dados que ele será aproximado)
    - Deixar o K grande o suficiente para reduzier a influencia de ourliers
    - Deixar o K pequeno o suficiente para que classes com poucos dados não perca a influência

- Alocação latente de Dirichlet
    >- No processamento de linguagem natural, a alocação latente de Dirichlet é um modelo estatístico generativo que permite que conjuntos de observações sejam explicados por grupos não observados que explicam por que algumas partes dos dados são semelhantes
    - Algoritmo Não Supervisionado
    - Infere/prevê Classificações e outros... 
    - Usado em análise de textos, para inserir tags em documentos... 
    - Procura por palavras para inferir os tópicos
    - Seleciona um número K de tópicos 

---

><h2>Algoritmos de Deep Learning</h2>

- Redes Neurais
    >- Em ciência da computação e campos relacionados, redes neurais artificiais são modelos computacionais inspirados pelo sistema nervoso central de um animal que são capazes de realizar o aprendizado de máquina bem como o reconhecimento de padrões.
    - Inferência = um dos neurôneos de output serndo ativados mais predominantemente
    - Vértices são valores e as arestas são pesos. O fluxo calcula os valores dos vértices adjacentes utilizando o peso + Bias e uma função de ativação
        - Função de ativação: Sigmoid( valore entre 0 e 1), ReLU(valores 0 se negativo e n = n se positivo) e Tanh (valores entre -1 e 1)
        - Bias: previne que o neuronio não seja desativado
    - Combinação de ajustes do Bias e do peso é essencialmente o aprendizado da reude neural
    - Realiza o Fowards propagation e Back Propagation -> Ajustar os pesos para ajustar a Loss Function (função de otimização)
        - Loss Function usa Gradient Decent e o Learning Rate
    - Ciclo de Fowards and Back Propagation (N° de vezes = Epochs -> hyperparameter) ajustando sempre a Loss Function

- Rede neural convolucional (Convolutional neural network)
    >- No contexto de inteligência artificial e aprendizagem de máquina, uma rede neural convolucional é uma classe de rede neural artificial do tipo feed-forward, que vem sendo aplicada com sucesso no processamento e análise de imagens digitais
    - Algoritmo supervisionado
    - Infere/prevê Classificações
    - Camadas convolucionais da rede (camadas internas)
        - Camadas de entrada são responsáveis por características principais
    

- Rede neural recorrente
    >- Uma rede neural recorrente é uma classe de redes neurais artificiais em que as conexões entre os nós formam um gráfico direcionado ao longo de uma sequência temporal. Isso permite exibir comportamento dinâmico temporal
    - Algoritmo Supervisionado
    - Infere/prevê reconhecimento de voz, previsão de ações, dados em séries temporais
    - Tem uma memória que ajuda o modelo a prever as ações futuras baseado no que aconteceu
        - O output alimenta a memória do modelo para ajudar nas próximas inferencias
        - Rede neural recorrente consegue lembrar um pouco
        - Long  Short-term memory consegue lembrar bastante!
    
---

><h2> Performance dos modelos e Otimização </h2>

- Confusion matrix
    >- No campo de aprendizado de máquina e, especificamente, no problema de classificação estatística, uma matriz de confusão, também conhecida como matriz de erro, é um layout de tabela específico que permite a visualização do desempenho de um algoritmo, normalmente um aprendizado supervisionado
    - Verdade conhecida vs Inferencia do Modelo (Quatro quadrantes quando tem 2 possíveis categorias)
        - True positivos: ML inferiu a resposta positiva e acertou
        - Ture negativos: ML inferiu a resposta negativa e acertou 
        - False positivos: ML inferiu a resposta positiva e errou
        - False negativos: ML inferiu a resposta negativa e errou
    - Com muitas categorias, a matrix cresce bastante e apenas a diagonal i = j será os valores de acerto
    - Testa diferentes algoritmos e monta a Confusion Matrix
        - Decidir qual algoritmo desempenha melhor para o modelo em questão
    - Métricas para calcular qual Algoritmo é melhor para um determinado Use Case
        - Sensitivity and Specificity

- Sensitivity e Specificity
    >- São medidas estatísticas do desempenho de um teste de classificação binária, também conhecido na estatística como função de classificação
    - Outra nomenclatura: True Positive Rate(TPR) e True Negative Rate(TNR) 
    - Sensitivity
        - Número de positivos corretos dentro dos reais positivos
        - Formula: True Positves / (true positives + False Negatives)
        - Ou seja, é a divisão dos acertos positivos do modelo, pela soma dos positivos conhecidos dos dados usados. (False negative = Deveria ter inferido como positivo, mas errou e inferiu negativo)
    - Specificity
        - Número de negativos corretos dentro dos reais negativos
        - Formula: True Negatives/ (True negatives + False Positives)
        - Ou seja, é a divisão dos acertos negativos pela soma do total de negativos dos dados utilizados pelo modelo. (False positives = Inferiu como positivo erroneamente, pois o correto era ser negativo)
    - Comparamos os valores encontrados entre diferentes algoritmos
        - Sensitivity -> Evitar que o modelo infira erroneamente um positivo como sendo negativo!
            - Fraude: Falso positivo é aceitável, contanto que os true positives sejam todos previstos
        - Specificity:   

- Accuracy e Precision
    - Accuracy: A proporção de *todas* previsões que foram corretamente identificadas
        - true positive + true negative / all 
    - Precision: A proporção dos reais positivos que foram corretamente identificados
        - True positives / all positives
    - Accuracy = 1, Tomar cuidado com overfit!

- ROC/AUC 
    - ROC: É uma representação gráfica que ilustra o desempenho de um sistema classificador binário à medida que o seu limiar de discriminação varia
    - AUC: Representa o grau ou medida de separabilidade. Quanto maior o AUC, melhor o modelo está em prever 0s como 0s e 1s como 1s
    - Cut off point: Aumentar a Specitifity ou a Sensitivity
        - Como colocar o cut off point? 
        - Depende do que é mais importante para nosso modelo
        - Utilizar a Confusion matrix, com diferentes Cut off point em cada matriz
        - Gráfico da TPR x FPR (sensitivity e specifity)
            - Os pontos do g´rafico formam o ROC (Receiver Operating Characteristics)
            - Encontrar o knee point = best model with max sensitivity ou max specificity
        - AUC: Area under the curve. Tenta maximizar a AUC do modelo 
            - Podemos testar diferentes modelos (algotimpos) para ver qual tem a maior AUC no gráfico

- Gini Impurity
    - Calculo para cada Feature para encontrar o Gini Impurity de cada um
        - G.I = 1 - ("prob val 1")² - ("prob val 2")² PPara cada valor da árvore de decisão
            - (("val 1")/ (pop total)) x G.I1 + (("val 2")/ (pop total)) x G.I2
            - Acha a média ponderada para a feature em questão
            - Repete para todas as outras features
            - A qual tem o menor valor, é a qual melhor decide corretamente
                - Utilizamos essa feature para ser o nó Raiz!

- F1 Score
    - Uma alternativa para precisão do algoritmo
    - F1 Score = Combination of recall(sensitivity) and precision
    - F1 Score = 2/((1/recall)+(1/precision)) ou ((recall x precision)/ (Recall + Precision))x 2
        
        
><h2> Ferramentas e Frameworks de Machine Learning</h2>

- Jupyter Notebooks
    - IDE
    - Web-Based: Conecta pelo Browser
    - Como se fosse uma Wiki para códigos
    - Combina códigos executáveis com documentações 
    - Usado extensivamente para ciência de dados, ML e Deep L.
    - Suporta várias linguagens de programação, incluindo python
    - **User/Browser <-> Jupyter Notebook Server <-> Kernel**
    - Usuário Cria ou carrega Nootbook Files para o Jupyter Notbook server
    - Possue células que são executáveis e retornam o valor da execução do algoritmo 
    - Sagemaker: Serviço AWS que faz o papel do jupyter notebook
        - Instancias de notebook totalmente gerenciadas
        - Multiplas opções de Kernel 

- ML e DL Frameworks
    - Diferença entre Algoritmo e Framework
        - Algoritmo: Ex: CNN            -> Calculos estruturados que levam a um resultado específico
        - Framework: Ex: TensorFlow, Keras, MXNet, PyTorch -> Forma de utilizar algoritmos de maneira mais abstraida/facilitada para obter os resultados
            - Ferramentas/APIs/Libriries que alguém contruiu e mantém para serem utilizadas sem precisar ter conhecimento a fundo dos algoritmos
    - **mxnet**: Framework adotado pela AWS
        - Muito bom para escalar na infra de cloud
        - Gluon for mxnet: Api especification
    - **PyTorch**: muito usado
    - **Scikit learn**: Fácil de utilizar/iniciar e para experimentar
    - Linguagens:
        - **Python**
        - **R**
        - **Go**

- TensorFlow
    - **import** tensorflow **as** tf  _(shift + Enter)_ ->carrega o tensorflow para o notebook
        - graph = tf.get_default_graph() retorna um graph padrão
        - graph.get_operations() pede para exibir o graph
        - [] retorna vazio da operação anterior 
        - .. Operações de multiplicação, adição: tf.add(), tf.multiply()
        - with tf.Session() as sess:
            - result = sess.run(d,feed_dict = v_for_b)

- PyTorch
    - Framework de Machine Learning com base em Python
    - **import** torch
    - requires_grad = True -> da pra fazer backpropagation

- MXNet
    - **import** mxnet as mx
    - **from** mxnet **import** nd
    - nd é parecido com um numpy array

- Scikit Learn
    - **import** sklearn
    - **from** sklearn **import** datasets

- Amazon ML
    - Aposentado

<h2> Serviços e Aplicações Amazon AI/ML (to do) </h2>
    - Amazon Rekognition
    - Amazon Polly
    - Amazon Transcribe
    - Amazon Transalate
    - Amazon Comprehend
    - Amazon Lex

<h2> AWS SageMaker </h2>

- Build, Train and Deploy ML models rapidamente
    - É uma solução de ML End-to-End, onde você pode trabalhar com o ciclo da vida inteiro da ML
     - Os três estágios do SageMaker
        - Build
            - Processing
            - Ground Truth: Labeling
            - Notebooks
        - Train
            - Algoritmos de ML prontos
            - Ajuste por hyperparameters
            - Notebooks
            - Infra
        - Dreploy 
            - Tempo real
            - Batch (lotes)
            - Notebooks
            - Infra
            - Neo: Deploy em dispositivos discretos, como uma borda da cloud (greengrass)

- Controlar o SageMaker
    - Pelo Console
    - Via SDK 
        - Sagemaker SDK
    - Jupyter Notebook
        - Encorajado pela AWS como o principal local para se controlar o SageMaker

- SageMaker Notebooks
    - Maneira fácil de ter um jupyter notebook para rodar uns códigos
    - Normalmente o notebook é só um local para controlar, então não precisa ser máquina potente
    - Possui vários Kernels pronto para uso. (PyTorch, MXnet..)
    - LifeCycle Configurations: Similar ao bootstrap das instancias EC2, ou seja, script que roda na criação da instância notebook 


<h2> Build </h2>

- Ter um bom entendimento de qual problema estamos tentando resolver
    - Ter um objetivo em mente
        - Coletar os dados certos, processar do jeito certo e selecionar o Algoritmo de ML apropriado, para estarmos aptos a criar nosso modelo

- Pre-processamento
    - Visualizar os dados (Matplot lab)
    - Explorar os dados 
    - Engenharia dos dados, nas features..
    - Sintetizar: Ajusatar os dados, pegar mais dados que vão influenciar o modelo a inferir o que desejamos
    - Conversão dos dados para o formato que o algoritmo escolhido aceita/performa melhor
        - Manipulação de dados
    - Dividir os dados: Dado de treino, validação (opcional) e treino
    - Componentes do SageMaker
        - SageMaker Notebook 
        - SageMaker Algoritmos
    
- Amazon Ground Truth
    - Contruir conjunto de dados altamente precisos usando ML e reduzindo os custos de rotulação dos dados em até 70%
    - Ajuda a rotular os dados
    - Humanos decidem e rotulam o dado para o Modelo
    - Amazon Mechanical Turk: Pessoas terceirizadas para fazer pequenos trabalhos para a Amazon

- Preprocessing Image Data 
    - "!aws s3 cp ..."  o ! é indicação de um comando na linha de comando (cdm)

- SageMaker Algorithms
    - SageMaker built-in algorithms
        - BlazingText (Amazon Comprehend, maybe)
            - word2vec/Text classification
            - Natural language processing (NLP)
            - Sentiment Analysis
            - Named Entity Recognition
            - Machine Tranlation
        - Image Classification Alg (behimd Amazon Rekognition)
            - Convolutional Neural Network (CNN)
        - K-means alg
            - Find discrete groupings within data
        - K-nearst neighbors (k-NN) alg
        - Latent Dirichlet Allocation (LDA) alg (Amazon Comprehend, maybe)
            - Text Analysis
            - Topic Discovery 
        - Linear learner algo
        - Object2vec Alg
        - Principal Component Analysist (PCA) alg
            - Reduce the dimensionality (i.e number of features)
        - Randon Cut Forest (RCF) alg
        - Squence-to-Sequence alg
        - XGBoost alg
            - eXtreme Gradient Boosting
            - Gradient boosted tress algoriothm
            - Use Case:
                - Making predictions from tabular data
        - (Documentação dos algoritmos)[https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html]
    - AWS Marketplace













<h2> Anotações e links úteis </h2>


- [⭐️ Resources ⭐](https://www.youtube.com/watch?v=9suSsTVhYuw) (Não lido ainda)
    - Links no comentário do vídeo
- [ROC/AUC](https://medium.com/@eam.avelar/o-que-%C3%A9-auc-e-roc-nos-modelos-de-machine-learning-2e2c4112033d) (não lido ainda)

- (Documentação dos algoritmos do SageMaker)[https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html]