data(package = "ggplot2")
data(package = "dplyr")
help(diamonds)                     # 데이터의 의미
print(package.)
mpg <- as.data.frame(ggplot2::mpg) # mpg 데이터 불러오기
df <- mpg %>% select(class, cty)   # class, cty 변수 추출
head(df)                           # df 일부 출력

df_suv <- df %>% filter(class == "suv")
df_compact <- df %>% filter(class == "compact")
a <- mean(df_suv$cty)
b <- mean(df_compact$cty)
a > b

exam %>% arrange(math)              # math 오름차순 정렬
exam %>% arrange(desc(math))        # math 내림차순 정렬
exam %>% arrange(class, math)       # class 및 math 오름차순 정렬
exam %>% arrange(class, dese(math)) # class 및 math 내림차순 정렬

mpg <- as.data.frame(ggplot2::mpg)
mpg %>% filter(manufacturer =="audi") %>% arrange(desc(hwy)) %>% head(5)

exam %>% mutate(total = math + english + science) %>% head
exam %>% mutate(total = math + english + science, mean = (math + english + science)/3) %>% head
exam %>% mutate(test = ifelse(science >= 60, "pass", "fail")) %>% head
exam %>% mutate(total = math + english + science) %>% arrange(total) %>% head 

mpg <- as.data.frame(ggplot2::mpg)               # mpg 데이터 불러오기
mpg_new <- mpg                                   # 복사본 만들기
mpg_new <- mpg_new %>% mutate(total = cty + hwy) # 합산 변수 만들기
mpg_new <- mpg_new %>% mutate(mean = total/2)    # 평균 변수 만들기
mpg_new %>% arrange(desc(mean)) %>% head(3)
mpg %>% mutate(total = cty + hwy, mean = total/2) %>% arrange(desc(mean)) %>% head(3) 

exam %>% summarise(mean_math = mean(math))
exam %>% group_by(class) %>% summarise(mean_math = mean(math))
exam %>% group_by(class) %>% summarise(mean_math = mean(math), sum_math = sum(math),median_math = median(math), n = n()) 

mpg %>% group_by(manufacturer, drv) %>% summarise(mean_cty = mean(cty)) %>% head(10)
mpg %>% group_by(manufacturer) %>% filter(class == "suv") %>% mutate(tot = (cty+hwy)/2) %>% summarise(mean_tot = mean(tot)) %>% arrange(desc(mean_tot)) %>% head(5)

mpg <- as.data.frame(ggplot2::mpg)
mpg %>% group_by(class) %>% summarise(mean_cty = mean(cty))
mpg %>% group_by(class) %>% summarise(mean_cty = mean(cty)) %>% arrange(desc(mean_cty))
mpg %>% group_by(manufacturer) %>% summarise(mean_hwy = mean(hwy)) %>% arrange(desc(mean_hwy)) %>% head(3) 
mpg %>% filter(class == "compact") %>% group_by(manufacturer) %>% summarise(count = n()) %>% arrange(desc(count))


test1 <- data.frame(id = c(1, 2, 3, 4, 5), midterm = c(60, 80, 70, 90, 85))
test2 <- data.frame(id = c(1, 2, 3, 4, 5), final = c(70, 83, 65, 95, 80))
test1
test2
total <- left_join(test1, test2, by = "id") # id 기준으로 합쳐 total 에 할당
total 
name <- data.frame(class = c(1, 2, 3, 4, 5), teacher = c("kim", "lee", "park", "choi", "jung"))
name
exam_new <- left_join(exam, name, by = "class")
exam_new
group_a <- data.frame(id = c(1, 2, 3, 4, 5), test = c(60, 80, 70, 90, 85))
group_b <- data.frame(id = c(6, 7, 8, 9, 10), test = c(70, 83, 65, 95, 80))
group_a
group_b
group_all <- bind_rows(group_a, group_b) # 데이터 합쳐서 group_all 에 할당
group_all

fuel <- data.frame(fl = c("c", "d", "e", "p", "r"), price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22), stringsAsFactors = F)
fuel

df <- data.frame(sex = c("M", "F", NA, "M", "F"), score = c(5, 4, 3, 4, NA))
df
is.na(df) 
table(is.na(df))
table(is.na(df$sex))   # sex 결측치 빈도 출력
table(is.na(df$score)) # score 결측치 빈도 출력
mean(df$score) # 평균 산출
sum(df$score)  # 합계 산출

library(dplyr) # dplyr 패키지 로드
df %>% filter(is.na(score))  # score 가 NA 인 데이터만 출력
df %>% filter(!is.na(score)) # score 결측치 제거
df_nomiss <- df %>% filter(!is.na(score)) # score 결측치 제거
mean(df_nomiss$score) # score 평균 산출
sum(df_nomiss$score)  # score 합계 산출
df_nomiss <- df %>% filter(!is.na(score) & !is.na(sex))
df_nomiss 
df_nomiss2 <- na.omit(df) # 모든 변수에 결측치 없는 데이터 추출
df_nomiss2

mean(df$score, na.rm = T)        # 결측치 제외하고 평균 산출
sum(df$score, na.rm = T)         # 결측치 제외하고 합계 산출
exam <- read.csv("csv_exam.csv") # 데이터 불러오기
exam[c(3, 8, 15), "math"] <- NA
exam %>% summarise(mean_math = mean(math))            # 평균 산출
exam %>% summarise(mean_math = mean(math, na.rm = T)) # 결측치 제외하고 평균 산출
exam %>% summarise(mean_math = mean(math, na.rm = T), sum_math = sum(math, na.rm = T), median_math = median(math, na.rm = T)) 
exam$math <- ifelse(is.na(exam$math), 55, exam$math) # math 가 NA 면 55 로 대체
table(is.na(exam$math))                              # 결측치 빈도표 생성
exam
mean(exam$math)
