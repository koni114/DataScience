setwd("/Users/yoon/Documents/DataScience/R_work") 

# write data file
write.xlsx(iris, 'iris.csv')

methods(plot) # check methods

a1 = iris
a2 = cars

save(a1, a2, file = 'a.rdata') # rdata save and load
load('a.rdata')

x1 = matrix(1:15, nrow=5)
x2 = matrix(1:15, nrow=5, byrow = T)

rbind(x1,x2) # bind row data

x3 = c(1,3) # concatenate vector data
for(i in 1:10){
  x3 = c(x3, i)
}

x4 = c(1,2,3)
x5 = c(5,6,7)

cbind(x4, x5)
rbind(x4, x5)

### merge example1
xx <- data.frame(name=c("a", "b", "c", "d"), math=c(1,2,3,4))
yy <- data.frame(name=c("c", "b", "a"), english=c(4,5,6))
merge(xx, yy) # x에는 있는데 y에는 없는거 제외하고 merge.

### merge example2
xx <- data.frame(name1=c("a", "b", "c", "d"), math=c(1,2,3,4))
yy <- data.frame(name2=c("c", "b", "a"), english=c(4,5,6))
merge(xx, yy)
merge(xx, yy, all=T, by.x='name1', by.y='name2')

### subset & set factor
s1 = subset(iris, Species == "setosa")
str(s1)
str(iris)
s1$Species = factor(s1$Species)
str(s1)

### species를 기준으로 iris데이터를 리스트로 쪼갬
s2 = split(iris, iris$Species)
str(s2)

### sort, order
s3 = c(1,5,3,7,9,2)
sort(s3, decreasing = F)
order(s3, decreasing = F) # current index of sorted data

### remove NA data
mean(c(1:5, NA), na.rm = T) # NA data remove

### find location
k = c(2,4,6,7,10)
which(k %% 2 == 0) # return index

### apply function
d <- matrix(1:9, ncol=3)
mean(d)
mean(d[1,])
for (i in 1:nrow(d)){
  print(mean(d[i,]))
}

apply(d, 1, sum) # 1 : by row
apply(d, 2, sum) # 2 : by column (attributes = features)

# lapply : list return
# sapply : vector return
# tapply : group processing

tapply(iris$Sepal.Length, iris$Species, sum)

list_data1 <- list(a = 1:5, b = 6:10)
mapply(sum, list_data1$a, list_data1$b)

### doBy
# install.packages("doBy")
library(doBy)
??summaryBy
summary(iris)
summaryBy(.~Species, iris) # 모든 attribute를 species를 기준으로 요약
summaryBy(Sepal.Length~Species, iris, FUN = median) # Sepallegnth를 species 기준으로 요약, median func로.
# == aggregate(Sepal.Length~Species, iris, FUN = median)

sample(1:20, 200, replace = T, prob = c(1,3,3, rep(1,17))) # 2,3이 많이 뽑힌다.
sampleBy(Sepal.Length~Species, data = iris, frac = 0.1, systematic = T) # 종 별로 10%씩 샘플링

### stack, unstack example
x_data = data.frame(a=c(3,2,9), b=c(5,3,2), c=c(4,5,7))
x_stack = stack(x_data)
summaryBy(values ~ ind, x_stack)

unstack(x_stack, values~ind)

### melt example
library(reshape2)
m <- melt(french_fries, id.vars=1:4)
str(french_fries)
View(french_fries)
m

### RMySQL package : pass

### sqldf package
# install.packages("sqldf")
dyn.load("/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/jre/lib/server/libjvm.dylib")
library(rJava)
library(sqldf)
sqldf("SELECT DISTINCT Species 
      FROM iris")
iris_rename = iris
names(iris_rename) = c("SL", "SW", "PL", "PW", "SP")
sqldf("SELECT AVG(SL) 
      FROM iris_rename
      WHERE SP='setosa'")

# 가설, 차이 검정
library("MASS")
data("survey")
str(survey)
View(survey)
model1 = t.test(Height ~ Sex, survey) # (A ~ B) 에서 A는 연속형, B는 factor형만 가능.
model1

# --> 결측데이터를 중간값으로 처리하는 과정
ind3 = c(5,7,8,5,NA,3,NA,7,NA)
length(ind3)
mean(ind3, na.rm = T)
ind3 = ifelse(is.na(ind3),
              round(mean(ind3, na.rm = T),0),
              ind3)
ind3

### 구간데이터 생성, 분류법
data("quakes")
mini = min(quakes$depth) # 최대 최소 지정
maxi = max(quakes$depth)
r = ceiling((maxi-mini)/8) # 구간 크기
inf = seq(mini, maxi, r) # 구간 생성
quakes$depth.cat = factor(floor((quakes$depth - mini)/r), 
                          labels = paste(inf, inf+r, sep = "-"))

### tidy data format 변환법
streetlamp <- read.csv('streetlamp.csv',header= T, fileEncoding = "euc-kr")
streetlamp

library(reshape2)

## wide format
##
##    A1 A2 A3 
## B1 10  7 12 
## B2  9 11  6

## long format
##
##    Aval Bval Value
## 1  A1   B1   10 
## 2  A1   B2    9
## 3  A2   B1    7

# wide format <-> long format 
# melt : wide format -> long format 
# cast : long format -> wide format

tidy_streetlamp <- melt(streetlamp, value.name = "count") 
head(tidy_streetlamp) 

dcast_streetlamp <- dcast(tidy_streetlamp, X ~ variable, value.var = "count" ) 
head(dcast_streetlamp) 