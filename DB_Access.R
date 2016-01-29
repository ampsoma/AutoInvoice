## Trying out db access to Time Rec stuff
library(RSQLite)
# still have to manually un archive file .gz type
data<-read.table(gzfile('/Users/samdougherty/Dropbox/TimeRecording/backup/timerec.db.gz'))
con<-dbConnect(SQLite(), "/Users/samdougherty/Dropbox/TimeRecording/backup/timerec.db")
dbBegin(con)
dbListTables(con)

dbReadTable(con,"T_category_1")

