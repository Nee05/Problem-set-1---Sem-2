#Dummy female
set.seed(5)
Female<-ifelse(rnorm(1000)>0, 1, 0)
sum(Female)

#Dummy discrimination
a<-0.5
b<-2
set.seed(3)
Discrimination<-ifelse(a+b*Female+rnorm(length(Female), 1, 2)>2.8, 1, 0)
sum(Discrimination)

#Variable Ability
set.seed(7)
Ability<-rnorm(length(Female), 16, 4)

#Dummy occupation
c<-3
d<--1.2
e<-2.1
f<-0.25
set.seed(8)
Occupation<-ifelse(c+d*Discrimination+e*Female+f*Ability+rnorm(length(Female), 1, 2)>7, 1, 0)
sum(Occupation)

#Variable Earnings
g<-23.5
h<-5.8
i<--3.03
k<-12.8
set.seed(9)
Earnings<-g+h*Ability+i*Discrimination+k*Occupation+rnorm(length(Female), 16, 4)
summary(Earnings)

summary(lm(Earnings~Discrimination))
summary(lm(Earnings~Discrimination+Occupation))
summary(lm(Earnings~Discrimination+Occupation+Ability))
summary(lm(Earnings~Discrimination+Ability))
summary(lm(Earnings~Occupation+Ability))

