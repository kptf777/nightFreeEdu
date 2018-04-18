# http://toylake.egloos.com 강의자료 참고
library(data.table);library(dplyr);library(ggplot2)
dataPath <- "/Users/jh_kwak/Documents/00_Bigdata/96_Education/야간자율_빅데이터교육_R_(이상철)/01_MiniProject_Housing/00_DATA/housing.data"
df<-tbl_df(fread(dataPath, data.table = F))
glimpse(df)


#iris데이터 
  data(iris)
  iris<-tbl_df(iris)
  glimpse(iris)
  
  sapply(iris[,1:4], mean)
  sapply(iris[,1:4], median)
  sapply(iris[,1:4], var)         
  sapply(iris[,1:4], sd)
  summary(iris)
  
#Filtering 예제
  iris
  iris %>% filter(Species=="setosa")
  iris %>% filter(Sepal.Length>=mean(Sepal.Length))
  