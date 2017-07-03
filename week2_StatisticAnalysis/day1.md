# 1일차 


-----------------------


#### **1. 개발환경 구축**


> **1.1 기본 설치** : Java 최신버전과 R, Rstudio 설치.

> cmd, terminal 에서 javac 명령어로 자바 설치 및 path 확인.\

> **1.2 javac 명령어가 안될때 / 설정법 (윈도우 7 기준)**

![](https://raw.github.com/yoonkt200/DataScience/master/week2_StatisticAnalysis/week2_images/1.JPG)

![](https://raw.github.com/yoonkt200/DataScience/master/week2_StatisticAnalysis/week2_images/2.JPG)

```
JAVA_HOME 이라는 변수를 추가하고, JAVA_HOME에는 java sdk 설치 경로를 입력한다.

시스템 변수 path에 JAVA_HOME을 추가하고, bin을 하위 디렉토리로 가리킨다.

(;%JAVA_HOME%\bin)
```

![](https://raw.github.com/yoonkt200/DataScience/master/week2_StatisticAnalysis/week2_images/3.JPG)

##### 다음처럼 되었으면 성공.

> **1.3 환경설정**

- General : Default working directory 세팅.

- Code : Saving 탭에서 Default text encoding UTF-8로.

- Appearance : 알아서 보기 좋게 설정하기.



-----------------------


#### **2. 통계분석 기본개념**

> 통계에서 추정이란 표본으로부터 모집단의 성질을 추정해내는 것. 확률 개념이 중요.

> 통계란 또한 수 많은 데이터에서 대표치(평균 등)을 뽑아내는 것.

> 대표치를 뽑아 낼 때, 이상치등의 여부를 확인하고 처리해야 함.

> 분산이란 흩어진 정도를 나타냄.

> 참고 : 가중평균

![](https://raw.github.com/yoonkt200/DataScience/master/week2_StatisticAnalysis/week2_images/4.JPG)

> 전수조사는 리소스 낭비가 심하므로, 샘플링을 해야함. (빅데이터 조차도 모집단이 아님.)



-----------------------




#### **3. 통계이론**

> 모집단 : 통계적 분석을 위한 관심의 대상이 되는 모든 사람, 응답 결과, 실험 결과, 측정값들 전체의 집합

> 통계조사 방법 : 전수조사, 표본조사, 임의추출

```R
sample(1:45, 6, replace = T) # 복원추출 샘플링
# [1] 21 24  9 37 43 32


```