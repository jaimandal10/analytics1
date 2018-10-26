#analysis of dataset mtcars using dplyr

library(dplyr)
?mtcars
#structure of datset
str(mtcars)
dim(mtcars)
names(mtcars) ; colnames(mtcars)  #colnames
rownames(mtcars)   #rownames
summary(mtcars)

#summary activities on mtcars
t1=table(mtcars$am)    #0:auto 1:manual
pie(t1)
pie(t1, labels=c('Auto' , 'Manual'))
table(mtcars$gear)
(t1=table(mtcars$gear))
pie(t1, labels=c('3gears' , '4 gears', '5 gears'))
t2=table(mtcars$wt)
barplot(t1)
barplot(t1, col=1:3, horiz=T)
barplot(t1, col=c('green','blue','red'), xlab='Gear', ylab='No of cars', ylim=c(0,20))
title(main='Distribution of gears', sub='No of gears')

mtcars %>% select(mpg,gear) %>% slice(c(1:5,10))
mtcars %>% arrange(mpg)
mtcars %>% group_by(mpg)
mtcars %>% arrange(mpg,am) %>% select(am,mpg)
mtcars %>% mutate(rn=rownames(mtcars)) %>% select(rn,mpg)
mtcars %>% slice(c(1,5,7))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.2)
mtcars %>% select(sample(x=c(1:11),size=2))
sample(c(1:12), size=3)
mtcars %>% mutate(newmpg=mpg*1.1)
mtcars %>% group_by(am) %>% summarise(mean(mpg))
mtcars %>% group_by(am) %>% summarise(LeastHP = min(hp), Maxwt=max(wt))
?add_col
