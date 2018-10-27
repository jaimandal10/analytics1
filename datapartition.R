#create vector of student names:divide into 2 groups
library(dplyr)
studentname=paste('Student',1:1000,sep='-')
head(studentname)
group1=60%
group2=40%

x=studentname
pos=sample(length(x),size=(.6*length(x)))
x[pos]
x[-pos]

#Create a large DF
sname=paste('S',1:1000,sep='-')
gender=sample(x=c('Male','Female'),size=1000,prob=c(.6,.4),replace=T)
marks=ceiling(rnorm(1000,60,10))
df=data.frame(sname,gender,marks)
head(df)
table(df$gender)
#split DF into 2 parts 70% and 30%
#train-70% of DF
#test-30% of DF

?nrow()
?rnorm
positions=sample(nrow(df), size=.7*nrow(df))
train=df[positions,]
train                   
test=df[-positions,]
test


#using caret
library(caret)
table(df$gender) 
prop.table(table(df$gender))
(index3=createDataPartition(y=df$gender,p=.5, list=F))
length(index3)
(train3=df[index3,])
(test3=df[-index3,])
(t3a=table(train3$gender)); prop.table(t3a)
(t3b=table(test3$gender)); prop.table(t3b)
women
