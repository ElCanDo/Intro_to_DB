import mysql.connector
from mysql.connector.errors import Error

mydb = mysql.connector.connect(
    host="localhost",
    user="Prince",
    password="Watson36@chi",
    database="alx_book_store"
)


mycursor = mydb.cursor()
try: 
    with mycursor.execute("""
                    CREATE DATABASE IF NOT EXISTS alx_book_store:
                    """) as e:
        print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as err:
    print("Error: can't connect to Database")

mycursor.close()
mydb.close()