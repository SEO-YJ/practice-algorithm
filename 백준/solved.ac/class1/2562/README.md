# 2562
## 최댓값

문제       
9개의 서로 다른 자연수가 주어질 때, 이들 중 최댓값을 찾고 그 최댓값이 몇 번째 수인지를 구하는 프로그램을 작성하시오.      
      
예를 들어, 서로 다른 9개의 자연수      
      
3, 29, 38, 12, 57, 74, 40, 85, 61       
        
이 주어지면, 이들 중 최댓값은 85이고, 이 값은 8번째 수이다.      
     
입력      
첫째 줄부터 아홉 번째 줄까지 한 줄에 하나의 자연수가 주어진다. 주어지는 자연수는 100 보다 작다.      
      
출력     
첫째 줄에 최댓값을 출력하고, 둘째 줄에 최댓값이 몇 번째 수인지를 출력한다.     
     
예제 입력 1     
3      
29     
38      
12     
57     
74     
40      
85     
61     
예제 출력 1       
85      
8      
       
             
## 코드
```swift
var aArr = [Int]()
for _ in 1...9 {
    aArr.append(Int(readLine()!)
}
print(aArr.max()!)
print(aArr.firstIndex(of: aArr.max()!)! + 1)
```

## 해결방법
1. append 메서드로 빈 배열에 입력 정수 저장                               // [Int]      
2. max 메서드로 [Int] 배열 아이템 최댓값 반환                             // -> Element?      
3. firstIndex(of: Element) 메서드로 인자의 값이 아이템에 있는 경우 첫번째 인덱스 반환 // -> Int?     
     

## 새로 배운 문법
append()     
Array.max() -> Element?            
Array.firstIndex(of: Element) -> Int?      
      

## 참조

