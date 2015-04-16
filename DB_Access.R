## Trying out db access to Time Rec stuff
library(RSQLite)

con<-dbConnect(SQLite(), "/Users/samdougherty/Dropbox/TimeRecording/backup/timerec.db")
dbBegin(con)
dbListTables(con)

dbReadTable(con,"T_category_1")
