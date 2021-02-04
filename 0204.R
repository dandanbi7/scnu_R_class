library(ggplot2)

# 5. 데이터 분석 기초!
## 데이터 파악하기

# ggplo2의 mpg 데이터를 데이터 프레임 형태로 불러오기
mpg <- as.data.frame(ggplot2::mpg)

# mpg 데이터 파악하기
head(mpg) # Raw 데이터 앞부분 확인
tail(mpg) # Raw 데이터 뒷부분 확인
dim(mpg) # 행과 열 
str(mpg) # 데이터 속성 확인

df_raw <- data.frame(var1 = c(1, 2, 1), var2 = c (2, 2, 1))
df_raw

df_new <- df_raw # 복사본 생성
df_new           # 출력

df_new <- rename(df_new, v2 = var2) # var2를 v2로 수정
df_new

city <- cty
highway <- hwy

mpg <-as.data.frame(ggplot2::mpg)
mpg_new <- mpg
mpg_new <- rename(mpg_new, city = cty)
mpg_new <- rename(mpg_new, highway = hwy)
head(mpg_new)

df <- data.frame(var1 = c(4, 3, 8), var2 = c(2, 6, 1))
df
df$sum <- df$var1 + df$var2
df


df$mean <- (df$var1 + df$var2)/2 # var_mean 파생변수 생성
df$mean2 <- df$sum/2
df

mpg$total <- (mpg$cty + mpg$hwy)/2
head(mpg)
mean(mpg$total)

summary(mpg$total) # 요약 통계프로그램 생성
hist(mpg$total)    # 

mpg$test <- ifelse(mpg$total >= 20, "pass", "fall")
mpg

table(mpg$test)

qplot(mpg$test) # 연비 합격 빈도 막대 그래프 생성

# A, B, C, D 등급 부여
mpg$grade2 <- ifelse(mpg$total >= 30, "A", ifelse(mpg$total >= 25, "B", ifelse(mpg$total, ifelse(mpg$total >= 20 "C", "D")))
mpg$grade2

midwest <-as.data.frame(ggplot2::midwest)
midwest
head(midwest)
tail(midwest)
View(midwest)
dim(midwest)
str(midwest)
summary(midwest)

midwest <- rename(midwest, total = poptotal)
midwest <- rename(midwest, asian = popasian)
midwest

midwest$ratio <- midwest$asian/midwest$total*100
hist(midwest$ratio)

mean(midwest$ratio)
midwest$group <- ifelse(midwest$ratio > 0.4872462, "large", "small")

table(midwest$group)
library(ggplot2)
qplot(midwest$group)
-
  