getwd()
setwd("C:/Users/user/Desktop/IT24300173")
getwd()

#Exercise01
data<-read.table("Data - Lab 8.txt", header=TRUE)
fix(data)
attach(data)

#Q1
popmn<-mean(Nicotine)
popvar<-var(Nicotine)
print(popmn)
print(popvar)

#Q2
samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

print(s.means)
print(s.vars)


#Q3
samplemean<-mean(s.means)
samplevars<-var(s.means)

print(samplemean)
print(samplevars)

#Q4
popmn
samplemean

#Q5
truevar=popvar/5
samplevars

#Exercise02
data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

#Q1
popmn<-mean(Weight.kg.)
popvar<-var(Weight.kg.)
print(popmn)
print(popvar)

#Q2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

print(s.means)
print(s.vars)


#Q3
samplemean<-mean(s.means)
samplevars<-var(s.means)

print(samplemean)
print(samplevars)

popmn
samplemean

truevar=popvar/6
samplevars