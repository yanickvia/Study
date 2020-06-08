<h1>Data Analytics - AWS Certificate Study </h1>

#### Informações retiradas do guia oficial do exame da AWS

- It validates an examinee’s ability to:
    - Define AWS data analytics services and understand how they integrate with each other.
    - Explain how AWS data analytics services fit in the data lifecycle of collection, storage, processing, and visualization.

---

### Domains To Study

> 1. Domain 1: Collection
>   - 1.1 Determine the operational characteristics of the collection system
>   - 1.2 Select a collection system that handles the frequency, volume, and source of data
>   - 1.3 Select a collection system that addresses the key properties of data, such as order, format, and compression
> 2. Domain 2: Storage and Data Management
>   - 2.1 Determine the operational characteristics of a storage solution for analytics
>   - 2.2 Determine data access and retrieval patterns
>   - 2.3 Select an appropriate data layout, schema, structure, and format
>   - 2.4 Define a data lifecycle based on usage patterns and business requirements
>   - 2.5 Determine an appropriate system for cataloging data and managing metadata
> 3. Domain 3: Processing
>   - 3.1 Determine appropriate data processing solution requirements
>   - 3.2 Design a solution for transforming and preparing data for analysis
>   - 3.3 Automate and operationalize a data processing solution
> 4. Domain 4: Analysis and Visualization
>   - 4.1 Determine the operational characteristics of an analysis and visualization solution
>   - 4.2 Select the appropriate data analysis solution for a given scenario
>   - 4.3 Select the appropriate data visualization solution for a given scenario
> 5. Domain 5: Security
>   - 5.1 Select appropriate authentication and authorization mechanisms
>   - 5.2 Apply data protection and encryption techniques
>   - 5.3 Apply data governance and compliance controls

---

> [Questões com respostas de exemplo - AWS](https://d1.awsstatic.com/training-and-certification/docs-data-analytics-specialty/AWS-Certified-Data-Analytics-Specialty_Sample-Questions.pdf) 

> [Exames testes sobre a prova de Big Data](https://www.whizlabs.com/aws-certified-big-data-specialty/)
    > - Usar e-mail do suporte para login
    > - Não desanimem se for muito difícil kkk



---

<h2>Anotações </h2>


- Kinesis vídeo Stream
    - capture, process and store video streams for analytics and machine learning
- Kinesis Data Streams
    - Build custom applications that analyze data streams using popular Stream processing Frameworks 
- Kinesis Data Firehose
    - Load data streams into AWS Data Stores (near real-time) 
- Kinesis Data Analytics    
    -  	to analyze data Streams with SQL
- Kinesis Producer Library (KPL)	
    - Configurable library to create producer applications that allow developers to achieve high throughput to a Kinesis stream
- Kinesis Client Library (KCL)
    - Helps create Kinesis Consumers consume and process data to send data to s3, dynamoDB reshift EMR Elasticsearch etc (name must be unique)
- Kinesis Agent
    - Stand alone java application 
- Kinesis REST API
    - incluir
- Shard
    - 	Uniquely identified group of data records in a stream - Input: 1Mb/s Output: 2Mb/s - 5 transactions/s for reads - 1000 records/s for writes
- Kinesis Producers
    -  	Aplications that sends data to kinesis
- Kinesis Consumers
    - 	Applications that consumes data from kinesis
- Resharding    
    -  	Split Shard (incrise) or Merge shard (reduce) 
- Record (Kinesis)
    - 	Unit of data Stroed in a stream: -Partition key; Sequence Number; Data blob
- Retention period    
    -  	24h by default - increast to 7d
- PutRecord
    - 	Single data record at time
- PutRecords
    - 	Multimple data records at time 
- Kinesis conector library
    - 	Java Based, used with the KCL 
- SQS Queues
    - 	Simple Queue Service - Buffer - SQS Extended Client Librar(uses S) Msg > 256Kb - Multiples Readers/Writers - Cases High priority low P
- AWS IoT
    - 	Managed Cloud Plataform - Devices interact securely with applications and other devices 
- Cognito Identity
    - 	Allow you to use your own identity provider /Cognito user pools.. can scale to milions of users 
- Device Gateway
    - 	Maintain sessions and subscriptions for all connected devices 
- Device Shadow(Thing Shadow)
    - 	Store and retrieve the current stato for a thing - Maintained for each thing connected to AWS IoT
- Rules Engine
    - 	The ability to interact with the AWS IoT service and other services
- AWS Data Pipeline
    -  	Orchestration of jobs 
- AWS Glacier
    - 	Keep all your data at low cost 
- Apache Hadoop
    -  	Is a Framework...
- Hadoop Common (Hadoop Core)
    - 	Considered the core of the hadoop framework - Librires and utilities needed by other Hadoop modules - Contents JAR files and scripts required to start Hadoop 
- HDFS
    - 	Distributed File System - Fault- tolerant - Data Replication block same size - High throughput to data 
- Hadoop YARN
    - 	Yet Another Resource Negotiator - Help Cluster resource-management and job scheduling 
- Hadoop MapReduce
    - 	Process very large data sets - Parllel, distributed algorithm on a cluster - Filesystem(unstructured) - Database(structured) - Data lcality
- Map
    - 	Split data into smaller chuncks - Processed in parallel
- Reduce
    - 	Outputs of map task become input for the reduce task - Data is reduced to create an outputfile 
- Master Node
    - 	Manage the resource of cluster and schedule jobs on multiples slaves nodes using HDFS 
- Slave nodes/Core node
    - 	Perform jobs in cordinate with each others 
- Resource manager
    -  	Scheduler that alocates avaliable resources in the cluster amoung computing applications 
- Node Manager
    - 	manage the resource on the slave node 
- Application Master
    -  	negociate resource with the node manager and work with de node manager to execute and monitor containers
- Containers
    - 	grant the right to an application(map reduce or spark) to use an specific amount of memory and cpu on an specific slave node 
- EMR Architecture
    - 	Default...?
- EMR Instance Groups
    -  	groups of EC2 Instances - 1 emr cluster can have up to 50 instance Group 
- Master instance Group
    - 	Can have ony one Master node
- Core Instance Group
    -  	Can have 1 or more node 
- Task Instance Group
    - 	Up to 48 task instance groups 
- EMRFS
    - 	EMR File System - Hadoop to access data in s3 as a file system as HDFS - Uses data directly on S3 without ingesting into HDFS
- Shrink operation
    - 	Resize a core instance group that contain a number of nodes
- Metadata
    - 	Optional - Extra Capacity - added and removed from running clusters 
- Global NameSpace
    - 	consolideted view of all the files in the cluster
- humm	holds information about the directorys and files in your cluster - hold informations about the blocks 
- Replicated Blocks
    - HDFS Replicate blocks across Slave Nodes default Replication factory = 3 
- HDFS Block Sizes
    -	Tend to be large - 64mb default - the sizes depends on the data input - large = minimize random disk seeks and latency
- Replication Factor
    -	Set in the hdsf-site.xml file - can be changed per file 
- Instance Store
    -	Attached to EC2 instance - High I/Operformance - High IOPS at low cost
- EBS for HDFS
    -	EBS With EMR volume DO NOT persist after cluster termination 
- S3DistCp
    -	Open source tool that you can use to copy large amouts of data effitiently (Extention of DistCp)
- EMRFS + HDFS together
    - 	Copy data from S3 to HDFS using S#DistCp - High I/O performance - Processing the same dataset frequently (network)
- Consistent View
    - 	Chcks for list and read after write consistency for new S3 objects written or synched with EMRFS 
- Spark
    -	Fast engine for processing large amounts of data - faster than mapReduce
- Spark Core
    -	General execution engine - Dispatch and scheduling of tasks - Memory management  
- RDDs Resilient Distributed Datasets 
    - 	Logical collection of data partitioned across machines
- DataSet
    -	Distributed collection of data 
- DataFrame
    -	DataSet organized into named columns
- Driver program
    - Coordinates processes - connects to Cluster Manager - convert user applications into smaller exec units called tasks - is send by spark to executors 
- Cluster Manager
    -	Allocates resources accross applications 
- Explode
    -	Returns a new Dataset where a single column has been expanded to zero or more rows by the provided function
- Spark on EMR
    -	Make the paper of MapReduce 
- DStreams
    - 	Bachs created by Spark Streaming (Collection of RDDs)   
- Spark Redshift Package Databricks
    -	Integrate Spark with redshift easly
- DistCp
    -	Allow you to copy data between clusters 
- Lambda
    -	Function As A Service - Siolated and Stateless - Invoked via API Gateway - local limit space 512mb
- HCatalog
    -	Allows you to access the Hive metastore tables using pig, spark...
- Glue
    -	Fully managed ETL service
- Crawlers
    -	Um crawler acessa seu armazenamento de dados, extrai metadados e cria definições de tabela do Catálogo de dados do AWS Glue. 
- Glue Data Catalog
    -	Manage metadata 
- Long Running cluster
    - 	Jobs on the cluster run frequently - terminated is protected 
- Transient cluster
    - 	Shuts down after processing - batch jobs when needed 
- Hive
    -	Data Warehouse infrastructure built on top of Hadoop - Summarize, Query and analyze very large data sets
- CloudWatch
    -	Events, rules
- Hue
    -	Hadoop User Experience - Open Source web interface for Apache Hadoop and other non Hadoop Applications
- SerDe
    -	Serializer/Deserializer - Read data and write it back to HDFS or EMRFS in any format and vice versa 
- HBase
    - 	Massively scalabre, distributed big data store in the Apache Haddop ecosystem
- Presto
    -	Open Source in-memory distributed fast SQL query engine - Run interactive analytic queries against a variety of data source 
- LZO
    - Compression	
- Snappy
    - Compression	
- GZIP
    - Compression	
- bzip2
    - Compression	Has the highest compression ratio. - takes longger to decompress
- Redshift
    -	Data Warehouse service in the cloud (OLAP and BI applications - Not use for OLTP)
- Redshift cluster
    -	Single Avaibility Zone Concept
- Compute Node - Slices
    -	Portion of memory and disk - Data loade in parallel
- MPP Database
    -	Massively Parallel Processing Database - Data stored on multiple nodes 
- COPY command
    -	Move data to Redshift from S3 DYDB EMR RDS
- UNLOAD command
    - 	From Redshift to other storage 
- Columnar Database
    -	Is a database management system that stores data tables as columns rahter tharn as rows 
- Distribution Styles
    -	Even - Key - ALL 
- DS - Even (default)
    -	Rows distribuited across the slices regardless of values in a particular column 
- DS - Key
    -	joins Tables Distribute data evenly among slices
- DS - ALL
    - 	Copy of entire table distributed to every node 
- Sort Key
    - 	closest thing to index in redshift - Store data on disk in sorted order according to the sort key
- Zone Maps
    -	Min and max values
- Automatic compression (recommendation)
    -	Default compression of redshift
- Constraint
    -	Rules on the type of data that can go into a table - helps maintain data integrity 
- Table_Inspector.sql
    -	Query to inspect the tables in database 
- Redshift Workload Management
    - 	Manage long ruinning queries/shor running queries - configure memory allocations to queues - rules to route queries to queues 
- Queries Groups
    -	Set the amount of memory to run towards those queries 
- User Groups
    - 	Set the amount of memory to run for those users 
- Manifest
    -	Load required files only - From different Buckets - With different prefix - JSON format
- Redshift Data Format Copy command
    -	CSV - Delimited - Fixed width - JSON - Avro - 
- UPSERT?
    - 	Combination of insert and update (NOT suported by redshift)
- Merge method 
    -	utilized to inserd update using stage table 
- ds2 Node
    - type	HHD Storage - To high amount of data
- dc1 Node 
    - Type	SSD - High I/O Operations 
- redshift endpoit
    -	adress to connect to redshift
- resize cluseter
    -	Node Type - Multi node - Became read only until resize finish
- vacuum command
    -	helps recover the space and sorts the table 
- deep copy
    -	Instead of vacuum command on large tables(can be slow) - Bulk insert automatically sorts the table (700GB +)
- Backup Snapshots	
    - Automatic or manual - every 8h or 5gb data change 
- compudate off
    -	not apply compression on create copy table redshift
- Dist Key
    -	Chave que determina qual a distribuição dos registros pelos nós do redshift
- Machine Learning
    -	Fraud Detec - Customer Service - litigation/legal - Security - Healthcare - Sports 
- Unsupervised Learning
    -	Unlabeled data - no knowledge of output - self guided learning alg - Amazon EMR with Spark/MLlib
- Supervised Learning
    - 	labeled data - desired output is known - Training data to learn from - Predictive Analytics - Amazon ML 
- Binary Classification Model
    -	Will a customer buy a product? yes no 
- Elasticseach
    -	Distribuited, multitenant capable, full text search engine - loggin and analysis - Distributed document store
- Logstash
    - 	get log to analyze 
- Athena
    -	Interactive query service that makes it easy to analyze data in Amazon S3 using SQL(serveless)
- Table Inspector
    -	https://docs.aws.amazon.com/pt_br/redshift/latest/dg/c_analyzing-table-design.html
- Redshift Data Source for Apache Spark
    -	A library to load data into Spark SQL DataFrames from Amazon Redshift, and write them back to Redshift tables. Amazon S3 is used to efficiently transfer data in and out of Redshift, and JDBC is used to automatically trigger the appropriate COPY and UNLOAD commands on Redshift.
- Direct Connect
    -	Direct Connect to get a direct, low-latency connection to an AWS environment from your on-premises environment.
- AWS CloudHSM	
    - É um Hardware Security Module (HSM – Módulo de segurança de hardware) baseado na nuvem que permite gerar e usar facilmente suas próprias chaves de criptografia na Nuvem AWS

    <h2>Links Úteis!</h2>

 - https://www.youtube.com/watch?v=BAeviLHj2G4

 - https://aws.amazon.com/pt/blogs/big-data/analyze-your-data-on-amazon-dynamodb-with-apache-spark/

 - https://aws.amazon.com/pt/blogs/big-data/analyze-realtime-data-from-amazon-kinesis-streams-using-zeppelin-and-spark-streaming/

 - https://aws.amazon.com/pt/blogs/big-data/optimize-spark-streaming-to-efficiently-process-amazon-kinesis-streams/

 - https://aws.amazon.com/pt/blogs/big-data/powering-amazon-redshift-analytics-with-apache-spark-and-amazon-machine-learning/

 - https://aws.amazon.com/pt/blogs/big-data/using-spark-sql-for-etl/

 - https://github.com/awslabs/emr-dynamodb-connector

 - https://github.com/databricks/spark-redshift

 - https://github.com/sko71/aws-bigdata-specialty

 - https://media.acloud.guru/aws-certified-big-data-specialty/resource/dec42f32-9121-3b6d-3dbd-e6882a53acbd_da25b325-b5a3-6f28-38a7-293267c46f14/aws-certified-big-data-specialty-cc61a9eb-8e86-4e1c-af35-17ca9e92ffe1.pdf?Expires=1557432853&Signature=Oj2orATf5kgfG5rwage+hfc14N+O9MD4fyWu/Cr+bSCzDpSEYPSO663/Bsm01RABRz3zGT7CSoi7x9QC9Wg1LOUfsIg/t8Ynk2X9XnpIxWQdA9vu5M+T6uP3mv86mHx7PjGz0nr805ed7WGZr52n8LjmfbQSz2lUX4AovbqiI3UjsAvbhemZ9s53bdjUQgQ080JFrk7LAa3vp2+NCjx7JDnAtfYllT3y0u3d3KSgGIfY1+Nl+BXfeU0tfmvKE28l07tak2fovfB2cCW3FWljz335Nq5H5YEemLLQdGz1DMvbFGqXpcNA1WBdbjXibpE87Kw2gWv5uQb0dMc9vNfkQg==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA

 - https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-web-interfaces.html

 - https://docs.aws.amazon.com/pt_br/emr/latest/ReleaseGuide/hue-ldap.html

 - https://media.acloud.guru/aws-certified-big-data-specialty/resource/dec42f32-9121-3b6d-3dbd-e6882a53acbd_19bdc3bf-1553-eacc-6af2-356b70c6cc9e/aws-certified-big-data-specialty-d31f7441-8bf1-490d-8896-cf5b6b48c239.pdf?Expires=1557438144&Signature=TuxrAwsTVO5zl5//XW6q2/2EvPwutc0IpCSc9jgy6gYQ2gIh0qGitJRHwSJ6nv0Opg4fVxRKd6LJQWDkuIguAxtvf6Gd1SQbNA3/1DzYwcMe8SJobHe+4qzRt8ipIXzll0IRoKyr9jkKb0qIR4rIubnhzRlRzfedJQHXyj6J1QFMKfn6a28WZneBXaddOMgev9zJhIq3LOlgJxXdk9jXGglNqFOQI7ke+vF6bCyZRqylvYvxZD01Znp9YSb9Xhmr6Zl5ay7pI/J+kaJbBNpyi5v/ThM93foUX/1wCtT8/PaemruL6kXWfX+bgj5vxSzqYL6kR7jwIa+0jSraOrOqtQ==&Key-Pair-Id=APKAISLU6JPYU7SF6EUA

 - https://aws.amazon.com/pt/blogs/big-data/combine-nosql-and-massively-parallel-analytics-using-apache-hbase-and-apache-hive-on-amazon-emr/

 - https://docs.aws.amazon.com/pt_br/emr/latest/ReleaseGuide/emr-hbase-access-hive.html

 - https://aws.amazon.com/pt/blogs/big-data/optimizing-for-star-schemas-and-interleaved-sorting-on-amazon-redshift/

 - https://docs.aws.amazon.com/redshift/latest/dg/c_loading-encrypted-files.html

 - https://docs.aws.amazon.com/redshift/latest/dg/t_unloading_encrypted_files.html

 - https://github.com/sko71/aws-bigdata-specialty/tree/master/Domain%204

 - https://docs.aws.amazon.com/pt_br/redshift/latest/dg/c_intro_STL_tables.html

 - https://docs.aws.amazon.com/pt_br/redshift/latest/dg/c_intro_STV_tables.html

 - https://docs.aws.amazon.com/pt_br/redshift/latest/dg/c_intro_catalog_views.html

 - https://docs.aws.amazon.com/pt_br/kinesisanalytics/latest/dev/stagger-window-concepts.html

 - https://docs.aws.amazon.com/pt_br/redshift/latest/dg/c_security-overview.html

 - https://docs.aws.amazon.com/pt_br/kinesisanalytics/latest/dev/authentication-and-access-control.html

 - https://docs.aws.amazon.com/pt_br/kinesisvideostreams/latest/dg/how-meta.html

 - https://docs.aws.amazon.com/pt_br/quicksight/latest/user/logging-using-cloudtrail.html

 - https://docs.aws.amazon.com/pt_br/amazondynamodb/latest/developerguide/GlobalTables.html

 - https://docs.aws.amazon.com/pt_br/kinesisanalytics/latest/dev/authentication-and-access-control.html

 - https://docs.aws.amazon.com/pt_br/kinesisvideostreams/latest/dg/how-meta.html

 - https://docs.aws.amazon.com/pt_br/comprehend/latest/dg/what-is.html

 - https://docs.aws.amazon.com/pt_br/rekognition/latest/dg/what-is.html

 - https://docs.aws.amazon.com/pt_br/polly/latest/dg/what-is.html

 - https://docs.aws.amazon.com/pt_br/sagemaker/latest/dg/whatis.html

 - https://docs.aws.amazon.com/pt_br/quicksight/latest/user/tabular.html

 - https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html

 - https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html

 - https://github.com/linuxacademy/content-aws-bigdata-cert

 - https://aws.amazon.com/pt/blogs/mt/the-virtues-of-yaml-cloudformation-and-using-cloudformation-designer-to-convert-json-to-yaml/

 - https://docs.aws.amazon.com/pt_br/AWSCloudFormation/latest/UserGuide/template-anatomy.html

 - https://docs.aws.amazon.com/pt_br/AWSCloudFormation/latest/UserGuide/pseudo-parameter-reference.html

 - https://docs.aws.amazon.com/pt_br/AWSCloudFormation/latest/UserGuide/mappings-section-structure.html

 - https://docs.aws.amazon.com/pt_br/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html

 - https://docs.aws.amazon.com/pt_br/AWSCloudFormation/latest/UserGuide/outputs-section-structure.html

 - https://docs.aws.amazon.com/pt_br/AWSCloudFormation/latest/UserGuide/cfn-helper-scripts-reference.html

 - https://docs.aws.amazon.com/pt_br/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html

 - https://docs.aws.amazon.com/pt_br/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html

 - https://aws.amazon.com/pt/blogs/big-data/amazon-redshift-engineerings-advanced-table-design-playbook-distribution-styles-and-distribution-keys/

 - https://docs.aws.amazon.com/pt_br/redshift/latest/dg/r_SVV_INTERLEAVED_COLUMNS.html

 - https://docs.aws.amazon.com/redshift/latest/dg/c_intro_catalog_views.html

 - https://docs.aws.amazon.com/kinesisanalytics/latest/dev/authentication-and-access-control.html

 - https://docs.aws.amazon.com/quicksight/latest/user/tabular.html