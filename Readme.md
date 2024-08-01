#### This project was proposed by the Boston Consulting Group (BCG)
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

Após instalar o docker desktop, execute o seguinte comando no cmd: docker-compose build

Em seguida inicie os containers: docker-compose up

**Banco de dados**

No seu navegador, acesse o pgadmin através do endereço: http://localhost:5050

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

5 - Clicar com o botão direito do mouse sobre o item "Esquemas", depois criar esquema e preencher conforme abaixo:
    Nome: a seu critério
    Proprietário: myuser
    Comentário: A seu critério

    [Salvar]

6 - clicar com o botão direito em cima do schema criado e depois "Query Tool"

7 - Inserir os comandos SQL para criação das tabelas (comandos dentro da pasta src/sql)

