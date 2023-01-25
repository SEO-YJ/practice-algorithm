# 2438
## 별 찍기 - 1

문제          
첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제       

입력       
첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.        

출력       
첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.      

예제 입력 1      
2       
예제 출력 1       
*       
**      
   
           
## 코드
```swift
let aInt = Int(readLine()!)!
let aArr = Array(1...aInt)
aArr.forEach{ 
    print(String(repeating: "*", count: $0))
}
```

## 해결방법
1. readLine()으로 입력 받음                           // String?     
2. 강제 언래핑 !                                     // String    
3. Int로 타입 캐스팅                                  // Int?
4. 강제 언래핑 !                                     // Int
5. 1,2,3 ... 받은 정수 값 까지 오름차순으로 정수 배열 생성   // [Int]
6. forEach 메서드로 정수 아이템 갯수만큼 클로저 내부 코드 반복 
7. String의 repeating 매개변수로 새로운 문자열 생성하여 출력 


## 새로 배운 문법
Array(1...a)      
String(repeating: Character, count: Int)      
Array.forEach{}     

## 참조

