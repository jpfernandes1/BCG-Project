# Este módulo fará a conexão do aplicativo com o banco de dados

# Bibliotecas
import os
import psycopg2
import psycopg2.extras as ext

# Função
def db_connection(sql, values=None):
    
    conn = None
    resultados = []

    # Conectando
    try: 
        conn = psycopg2.connect(
            host="localhost",
            port="5432",
            dbname="mydatabase",
            user="myuser",
            password='123456'
            )
        cur = conn.cursor(cursor_factory=ext.DictCursor)
        cur.execute(sql, values)
        conn.commit()
        resultados = cur.fetchall()
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()

    return [dict(row) for row in resultados]