english <- c(90,80,60,70)
english
math <- c(50,60,100,20)
math
class <- c(1,1,2,2)
class

d_frame <- data.frame(english, math, class)
d_frame

mean(d_frame$english)

d_frame_02 <- data.frame(english = c(90,50,10,30), math = c(50,50,40,30), class = c(1,1,2,2))
d_frame_02


library(readxl)
read_data_excel <- read_excel("./Data/excel_exam.xlsx")
View(read_data_excel)

read_sheet <- read_excel("./Data/0203_sample_data.xlsx", sheet=3)
View(read_sheet)

read_csv_data <- read.csv("./Data/0203_sample_data.csv")
View(read_csv_data)
