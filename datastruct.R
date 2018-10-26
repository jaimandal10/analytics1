#Data Structures
(x2=c(1,2))
class(x2)
(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b=c('a', "Jai", "4"))
class(x3b)
(x4=c(T,FALSE,TRUE,F,T))
class(x4)
?source()
(y=c("Gigi",T,1))
class(y)
LETTERS[seq(1,26,2)]
length(y)
(x6=letters[1:100])
x6[-seq(27,100)]
(x6=sample(1:20))
sort(x6)
sort(x6,decreasing=T)
rev(x6)
set.seed(123)
sort(x6)
x2[2]=3
x2
(x=1:10)
x<5
x[x<4 | x>6]
(m1=matrix(100:111, nrow=4))
(m2=matrix(100:111, ncol=3, byrow=T))
x=101:124
m3=matrix(x, ncol=6)
class (m3)
attributes(m3)
dim(m3)
m1[1,]
m1[,1]
m1[1,2:3]
m1[c(1,2),]
m1[,-c(2,3)]
(colnames(m1)=paste('C',1:3,sep=''))
(rownames(m1)=paste('R',1:4,sep=''))
m1
colSums(m1)
rowSums(m1)
colMeans(m1)
rowMeans(m1)
t(m1)
m1
attributes(m1)
sweep(m1,MARGIN=1, STATS=c(2,3,4,5), FUN="+")
sweep(m1,MARGIN=2, STATS=c(2,3,4), FUN="*")
addmargins(m1,1,sum)
