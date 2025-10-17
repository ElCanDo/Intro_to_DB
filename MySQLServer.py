import mysql.connector


mydb = mysql.connector.connect(
    host="localhost",
    user="Prince",
    password="Watson36@chi",
    database="alx_book_store"
)


mycursor = mydb.cursor()
mycursor.execute("""
                 CREATE DATABASE IF NOT EXISTS alx_book_store:
                 """)
