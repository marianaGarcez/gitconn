import psycopg2

# Connect to an existing database
conn = psycopg2.connect(host="localhost", port = 5432, user="postgres", password="postgres")
if conn :
    print("YAY")

# Open a cursor to perform database operations
#cur = conn.cursor()


#cur.close()
conn.close()