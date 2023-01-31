# 1008
## A/B
문제      
두 정수 A와 B를 입력받은 다음, A/B를 출력하는 프로그램을 작성하시오.       
      
입력        
첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)        
      
출력     
첫째 줄에 A/B를 출력한다. 실제 정답과 출력값의 절대오차 또는 상대오차가 10-9 이하이면 정답이다.     
      
예제 입력 1      
1 3     
예제 출력 1     
0.33333333333333333333333333333333     
10-9 이하의 오차를 허용한다는 말은 꼭 소수 9번째 자리까지만 출력하라는 뜻이 아니다.     
       
## 코드
```swift
let aArr = readLine()!.split(separator: " ").map { Double($0)! }
print(aArr[0]/aArr[1])
```

## 해결방법
1. 첫째 줄에 String 값이 주어지므로, readLine() 함수로 입력 받음      
2. readLine() 함수는 String?을 반환하므로 강제 언래핑     
3. `문자열로 주어진 두 숫자`는 String 타입의 split 메서드 이용      
    - split(separator: Character) -> [Substring]      
4. " " Character 값으로 문자열의 정수들을 Substring 배열에 아이템으로 저장.      
5. map으로 [Substring] -> [Double] 변경      
6. 나눗셈 출력     

## 새로 배운 문법
String.split(separator: Character)
map{ }

## 참조

