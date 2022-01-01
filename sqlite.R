# Basic DB functionality
library(DBI)

# create a DB connection to an SQLite DB in RAM
con <- dbConnect(RSQLite::SQLite(), ":memory:")

# create table from demo data
dbWriteTable(con, "mtcars", mtcars)

# show the table
dbListTables(con)

# list fields in table
dbListFields(con, "mtcars")

# read the table
dbReadTable(con, "mtcars")

# make a query
res <- dbSendQuery(con, "SELECT * FROM mtcars WHERE cyl = 4")

# fetch query result
dbFetch(res)

# destroy query
dbClearResult(res)

###############################
# Use dplyr, SQL with a "builder" interface

library(dplyr)

# access table
car_db <- tbl(con, "mtcars")

# show raw table
car_db

# select from table
car_sel <-car_db %>% select(mpg:disp, gear, carb)

# make a query
car_que <- car_sel %>% filter(mpg > 20)

# execute the query
cquery <- car_que %>% collect()

# turn query result into a "tibble"
ccquery <- collapse(cquery) 

# attach the "tibble"
attach(ccquery)

# plot some points
plot(disp,mpg)
