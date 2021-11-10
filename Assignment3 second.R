######read csv file#####

restData <-read.csv("C:/Users/Administrator/Desktop/新建文件夹/food-price-index-September-2021-index-numbers-csv-tables.csv")

head(restData,n=15)
tail(restData,n=15)
summary(restData)
str(restData)

install.packages("Hmisc") ####using library###
library(lattice)
library(survival)
library(Formula)
library(ggplot2)
library(Hmisc)

restData$Series_reference <-factor(restData$Series_reference) #######factor function####
restData$Series_reference[1:15]

class(restData$Series_reference)
yesno <-sample(c("yes","no"),size=15,replace = TRUE)
yesnofac=factor(yesno,levels = c("yes","no"))
relevel(yesnofac,ref = "yes")
as.numeric(yesnofac)

table(restData$Series_reference)
table(restData$Data_value)

head(restData$Series_reference)
head(restData$Data_value)


library(dplyr)

df<- data.frame(A=c("0.9" ,"0.91" ,"0.93", "0.94", "0.95" ,"0.96" ),
                B= c("NA", "3.11", "NA", "2.78","NA","2.43"))
df
df1<- df %>%
  # recode empty strings "" by NAs
  na_if("") %>%
  # remove NAs
  na.omit
df1
dim(df1)

library(reshape2)
head(sapply)
restData$Data_value <-factor(restData$Data_value)
table(restData$Data_value)

type <-restData$Series_reference
value<-restData$Data_value
df<-data.frame(type,value)
df
