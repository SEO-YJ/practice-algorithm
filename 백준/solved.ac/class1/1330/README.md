# 1330
## 두 수 비교하기

문제     
두 정수 A와 B가 주어졌을 때, A와 B를 비교하는 프로그램을 작성하시오.      
     
입력      
첫째 줄에 A와 B가 주어진다. A와 B는 공백 한 칸으로 구분되어져 있다.      
       
출력      
첫째 줄에 다음 세 가지 중 하나를 출력한다.      
     
A가 B보다 큰 경우에는 '>'를 출력한다.     
A가 B보다 작은 경우에는 '<'를 출력한다.     
A와 B가 같은 경우에는 '=='를 출력한다.      
제한      
-10,000 ≤ A, B ≤ 10,000     
예제 입력 1     
1 2       
예제 출력 1     
<      
       
## 코드
```swift
let arr = readLine()!.split(separator: " ").map { Int($0)! }

if arr[0] > arr[1] {
    print(">") } 
else if arr[0] == arr[1] {
    print("==") } else {
    print("<") }
```

## 해결방법
1. readLine()으로 입력 받음       // String?     
2. 강제 언래핑 !                 // String    
3. components 메서드로 배열 만듬   // [String]     
4. map으로 Int 배열 만듬          // [Int]
5. Int 배열로 조건문으로 해결      

## 새로 배운 문법


## 참조

