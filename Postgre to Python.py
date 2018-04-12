## Connecting database from PostgreSQL to Python.

from sqlalchemy import create_engine
import psycopg2 as pg
import pandas as pd

conn = pg.connect ("dbname = 'dvdrental' user='postgres' password='123456789'")
# Create the connection

df = pd.read_sql_query("SELECT * FROM customer", conn)
# query db
# a dataframe is visible in the variable explorer


conn.close()