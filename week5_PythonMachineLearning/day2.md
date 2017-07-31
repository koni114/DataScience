# 2일차 


-----------------------


#### **1. 활성함수와 학습**


> **1.1 **

```
다음 레이어로 갈 때 input에 따른 output을 계산하는 과정을 담당하는 것이 활성함수이다.
히든 레이어에서의 활성함수를 결정하는 것이 학습에 대한 과정에서 노드의 영향력을 결정하는 것이라고 할 수 있다.
output노드에서의 활성함수는 학습의 종류(회귀, 분류 등 목적에 맞게)에 따라 달라지는데, 
일반적으로 multinomial 분류같은 문제에서는 소프트맥스 함수를 사용한다.


비선형 문제를 선형 분리(선형 문제로 변환)이 가능하도록 하는 게 커널 기법.

??? 커널 기법
??? 퍼셉트론, 분류 문제에서 선형 분리란 무엇을 의미하는가
??? 오버피팅 ~ dropout 개념 정리
??? dropout : http://bcho.tistory.com/1149 참고
??? input 레이어는 한 이미지의 픽셀만으로 구성된 게 아니라, 학습용 이미지 전체...? dropout은 어떻게 적용하는지?
??? 그렇다면 predict는 어떤 과정으로 하는 거?
??? 온라인 방식과 배치 방식의 차이
??? 인공신경망과 딥러닝의 차이점 : https://m.blog.naver.com/PostView.nhn?blogId=lk3436&logNo=220469636281&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F
??? 퍼셉트론의 가중치 업데이트 개념과 구현
??? 로지스틱 회귀의 가중치 업데이트와 개념이 같은 것인지??
??? SBS와 라쏘같은 페널티 규칙의 차이는 무엇인가??
??? 랜덤 포레스트 변수 중요소 측정 원리는?
??? 랜덤 포레스트는 블랙박스라고 했는데 변수 중요도가 측정이 가능하다고?
??? L1, L2 정규화?
```