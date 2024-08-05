### This project was proposed by the Boston Consulting Group (BCG)
For more information about this program, click [HERE](https://www.theforage.com/simulations/bcg/data-science-ccdz).

Task 1 - Understanding the business context and problem statement
On this project we'll work with PowerCo, which works with gas and electicity. The goal is to look for churn reasons.

"Gain a better understanding of the problem our client is facing and translate the business problem into a data science one. Think about how you would go about solving this, from the data you think is relevant, to what modeling approach you would pursue, to how you would interpret the outcome"

During the meeting your Associate Director (AD) discussed some potential reasons for this churn, one being how “sensitive” the price is. In other words, how much is price a factor in a customer’s choice to stay with or leave PowerCo?

[Take a look at "Letter_to_AD" to view the project proposal]

AD Proposal
The AD would like you to investigate whether price sensitivity is the most influential factor for a customer churning, and if not, to what extent does price sensitivity influence churn.

<center> Introdução </center>

Para a construção dessa solução criaremos um modelo de machine learning do tipo classificação/regressão: XXX.

Os dados que alimentam o modelo estarão no BD Postgree,
que será criado num container docker.

O deploy será realizado via XXX.

<center> Sobre os dados </center>

<center> Infra <center>

**Containers postgres e pgadmin**

Após instalar o docker desktop, execute os seguintes comandos no cmd: 

1 - docker network create local-network
2 - docker-compose -f docker-compose.yml up

Em seguida inicie os containers: docker-compose up

**Banco de dados**

No seu navegador, acesse o pgadmin através do endereço: http://localhost:8080

Passo a passo para criar a conexão com o banco de dados:
1 - Após abrir o pgadmin, faça login conforme as credenciais definidas no docker-compose.yml
    user: admin@example.com
    senha: admin
2 - A seguir clique em "Adicionar servidor" e Preencha as informações conforme abaixo:
    General
        Name: Local
    Connection
        Host: postgres
        Port: 5432
        Maintenance database: postgres
        Username: myuser
        Password: 123456
4 - Marque o flag em "Save password" e clique em "Save".

Ao fim dessa execução, já haverá um DB criado com o nome "mydatabase".

5 - Abrindo a árvore do DB criado, clicar com o botão direito do mouse sobre o item "Esquemas", depois criar esquema e preencher conforme abaixo:
    Nome: webuser
    Proprietário: myuser
    Comentário: A seu critério

[Salvar]

6 - clicar com o botão direito em cima do schema criado e depois "Ferramenta de consulta"

7 - Inserir os comandos SQL para criação das tabelas (comandos dentro da pasta src/sql)

8 - Insira os dados dos arquivos .csv que estão em data/ dessa forma:
    a) Aba Geral: Clique com o botão direito em cima da tabela e em "Importar/Exportar Dados..." e escolha o arquivo
    b) Aba Opções: ative a opção "Cabeçalho"

**Scripts de conexão do banco de dados**





### Observações gerais

1. Não foi avaliada a necessidade de normalização do banco de dados



## Desafios enfrentados

1 - Inicialmente tentei utilizar o pgadmin localmente, mas não consegui fazer a comunicação entre ele e o container postgres. Para resolver isso criei um container para o pgadmin. <br>
2 - No momento de importar os dados para as tabelas, tive dois problemas principais: <br>
    a) Criei a coluna id das tabelas como INT e nos .csv a informação era uma cadeia de texto. Alterando na criação para VARCHAR(255) o problema foi resolvido. <br>
    b) A tabela price possui IDs duplicados, uma vez que são registros ao longo do tempo para cada cliente. Definindo uma chave primária composta (client_id, price_date) o problema foi resolvido. <br>
    c) Ainda na ingestão da tabela price, havia ID's no .csv price_data que não existiam na tabela **client**. Dessa forma, foi preciso remove-los.
    Faça isso executando o código no notebook **price_data_adjust.ipynb** <br>