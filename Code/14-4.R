if (nchar(Sys.getenv("SPARK_HOME")) < 1) {
  Sys.setenv(SPARK_HOME = "/usr/local/spark")
}

library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib")))

Sys.setenv(SPARK_CLASSPATH="/usr/local/spark/sqljdbc4.jar")

#sparkR.session(master = "local", sparkConfig = list(spark.driver.memory = "2g"))
sparkR.session(appName = "SparkR-SQL Server")

df<-read.jdbc("jdbc:sqlserver://192.168.28.1",tableName="iris",user="test",password="test")

head(df)
count(df)

library(ggplot2)

qplot(data=collect(df), sepal_length,  sepal_width, colour=species)
qplot(data=collect(df), sepal_length,  sepal_width, shape=species)

local_df <- collect(df)

qplot(data=local_df, sepal_length,  sepal_width, color=species)
qplot(data=local_df, sepal_length,  sepal_width, shape=species)

sparkR.session.stop()
