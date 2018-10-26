#Import / Export Data

dir('./data2')
list.files('./data2')
list.files('./data')
file.exists("./data/mtcars.csv")
data=scan("./data2/hhe.txt",what="character")
head(data)
?head()
#CSV Read from CSV
#First Create as CSV file from iris data set
head(iris)
?iris
write.csv(iris, "./data/iris.csv", row.names=F)  #No row names(Sl no) needed so False
read1=read.csv(file="./data/iris.csv",header=TRUE,sep=",")
read_web1=read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)
head(read1)

#Import from Google sheet
library(gsheet)
url_gsheet="https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet=as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)

#Import from excel
library(xlsx)
library(rJava)
