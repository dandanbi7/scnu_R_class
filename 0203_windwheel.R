install.packages("imager")
library(imager)

img_path <- "./img/pinwheel.png"  # 이미지의 위치 설정
img <- load.image(img_path)       # 이미지 불러오기
plot(img)                         # 이미지 표시하기

img <- resize(img, size_x = 400L, size_y = 400L)   # 이미지 크기 조정
plot(img, xlim=c(0,400), ylim=c(0,400))            # 이미지 표시하기

angle <- 0
while(TRUE){
  angle <- angle + 10
  imrotate(img, angle, cx=200, cy=200) %>% plot(axes=FALSE)
  Sys.sleep(0.4)
}