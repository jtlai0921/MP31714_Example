setwd("c:/")
getwd()

setwd("c:/")
X <- read.table("X.csv",sep=",",header=TRUE)
X
X$age
X[1,2]


setwd("c:/")
X <- read.table("X.csv",sep=",",header=FALSE)
X

setwd("c:/")
X <- read.csv("X.csv", header=TRUE,encoding="Big5")
X

X <- read.csv("X.csv", header=FALSE,encoding="UTF-8")
X

X <- read.csv("http://www.k12ea.gov.tw/files/common_unit/8b44a0ce-6793-4284-8fcf-ed22c3b216c9/doc/6-15學生平均體重.csv", header = TRUE, encoding = "UTF-8")
X

X <- read.table("X.txt",header=TRUE)
X

X <- scan("")
X

my=scan(file="",what=list(name="",pay=integer(0),sex=""))
mode(my)


X <- scan("X1.csv", sep=",")
X
 
X <- scan("X1.txt")
X
 
write.table(X,"C:/X_File.csv",row.names=FALSE,col.names=FALSE,sep=",")

write.table(X,"C:/X_File.csv",row.names=FALSE,col.names=TRUE,sep=",",fileEncoding="Big5")

data()

data(iris)
iris
 
str(iris)
 
setwd("c:/")
data(iris)
save(iris,file="iris.RData")

getwd()
load("iris.RData", .GlobalEnv)

install.packages("RODBC")
library("RODBC")

db <- odbcConnect(dsn="test", uid="test", pwd="test")

query <- "SELECT * FROM iris"
df <- sqlQuery(db, query)
df
str(df)
head(df)
tail(df)

odbcClose(db)


