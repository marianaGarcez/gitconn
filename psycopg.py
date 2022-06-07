import psycopg2

# Connect to an existing database
conn = psycopg2.connect("user=postgres")

# Open a cursor to perform database operations
cur = conn.cursor()

cur.close()
conn.close()