# Use a imagem oficial do PostgreSQL
FROM postgres:latest

# Defina as variáveis de ambiente para o PostgreSQL
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=123456
ENV POSTGRES_DB=mydatabase

# Exponha a porta padrão do PostgreSQL
EXPOSE 5432
