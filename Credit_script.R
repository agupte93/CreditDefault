library(caret)

#Clear Screen Code
cat("\014")  

## DATA DISCOVERY ##

#Getting Training Data
source <- read.csv("~/CreditDefault/application_train.csv")
str(source$CODE_GENDER)
summary(source1)
source$TARGET<-as.factor(source$TARGET)
#Dropping 4 Records where Code Gender is Not Defined and previous data source variable for memory
source1<-source[which(source$CODE_GENDER!='XNA'),]
rm(source)

#Investigating Count Children maximum being 19

ggplot(source1,aes(CNT_CHILDREN))+geom_histogram(binwidth = 1)
nrow(source1[which(source1$CNT_CHILDREN>10),])
source1[which(source1$CNT_CHILDREN>10),]
# SK_ID_CURR = 280108 and 407877 have CNT_CHILDREN = 19

