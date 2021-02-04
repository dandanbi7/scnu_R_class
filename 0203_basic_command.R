library(readxl)
exam <- read.csv("./Data/csv_exam.csv", fileEncoding = "euc-kr")
View(exam)   # 전체 데이터 프레임 보여주기
head(exam)   # 앞에서부터 6개 데이터 프레임 보여주기
tail(exam)   # 뒤에서부터 6개 데이터 프레임 보여주기
head(exam, 10) # 앞에서부터 원하는 개수만큼 보여주기
tail(exam, 10) # 뒤에서부터 원하는 개수만큼 보여주기 

summary(exam)
max(exam$math)      # math 변수에서 최대값 찾기           
min(exam$english)   # english 변수에서 최소값 찾기

install.packages("ggplot2")
mpg <-as.data.frame(ggplot2::mpg)
View(mpg)

dim(mpg)
summary(mpg)


install.packages("dplyr")
library(dplyr)


df_raw <- data.frame(var1=c(1,2,3), var2=c(2,3,2))


df_raw
df_new <- df_raw
df_new

df_new <- rename(df_new, v2 = var2)
df_new
df_new$var_sum <- df_new$var1 + df_new$v2
df_new
