# 10818
## 최소, 최대

문제      
N개의 정수가 주어진다. 이때, 최솟값과 최댓값을 구하는 프로그램을 작성하시오.       
      
입력         
첫째 줄에 정수의 개수 N (1 ≤ N ≤ 1,000,000)이 주어진다. 둘째 줄에는 N개의 정수를 공백으로 구분해서 주어진다. 모든 정수는 -1,000,000보다 크거나 같고, 1,000,000보다 작거나 같은 정수이다.       
      
출력      
첫째 줄에 주어진 정수 N개의 최솟값과 최댓값을 공백으로 구분해 출력한다.       
      
예제 입력 1          
5        
20 10 35 30 7      
예제 출력 1        
7 35        
               
              
## 코드
```swift
let count = Int(readLine()!)!
let aArr = readLine()!.components(separatedBy: " ").map { Int($0)! }
print(aArr.min()!, aArr.max()!)


```

## 해결방법
1. 5개의 정수가 문자열로 입력받으므로, readLine()으로 받음 // String?    
2. 강제 언래핑   // String     
3. components 메서드로 문자열 배열 만듬     // [String]     
4. map 함수로 Int 형 배열로 변환           // [Int]          
5. min()과 max()로 배열의 최소, 최대값 반환 

## 새로 배운 문법
Array.min()      
Array.max()         


## 참조

