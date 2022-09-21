library(ggplot2)
library(tidyverse)
# Create a dataset
species=rep(x=c("sorgho","poacee","banana","triticum"),each=3)
condition=rep(x=c("normal","stress","Nitrogen"),times=4)
set.seed(550)
value=abs(rnorm(n=12,mean=0,sd=15))
data=data.frame(species,condition,value)
view(data)

# Groupped
ggplot(data,aes(x=species,y=value,fill=condition))+geom_bar(stat="identity",position = "stack")

