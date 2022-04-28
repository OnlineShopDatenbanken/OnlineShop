import psycopg2 as pg2

conn = pg2.connect(database="postgres", user="postgres", password="admin", host="localhost", port="5432")
cur = conn.cursor()
cur.execute("SELECT * FROM Customers;")
print(cur.fetchmany(10))