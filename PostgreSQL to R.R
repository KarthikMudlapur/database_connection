
### Connecting PostgreSQL with R studio

library('RPostgreSQL')
library('dbConnect')

drv <- dbDriver("PostgreSQL")

con <- dbConnect(drv = drv, 
                 user="postgres", 
                 dbname="dvdrental",
                 password="123456789",
                 host ='127.0.0.1',
                 port = 5432)

dbGetInfo (con)
dbListTables(con)
# to get some info about the connections and the tables in the DB

df = dbGetQuery(con, statement = paste("SELECT * FROM customer")); 

class(df)
#to check if its a dataframe



### Connecting mySQL with R studio

 
# install.packages("RMySQL", dependencies = TRUE)
# install.packages("dbConnect")
library(RMySQL)
library(dbConnect)
drv = dbDriver("MySQL")
con <-dbConnect(drv = drv,
                 user = 'root',
                 password = '123456789',
                 host = '127.0.0.1',
                 dbname = 'assignment',
                 port = 3306)

dbGetInfo (con)
dbListTables(con)

package_count <- dbGetQuery(con, "SELECT * FROM package_count")
packagewos_count <- dbGetQuery(con, "SELECT * FROM packagewos_count")