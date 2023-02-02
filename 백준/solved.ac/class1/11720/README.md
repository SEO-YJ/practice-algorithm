# 11720
## 숫자의 합

문제        
N개의 숫자가 공백 없이 쓰여있다. 이 숫자를 모두 합해서 출력하는 프로그램을 작성하시오.        
          
입력         
첫째 줄에 숫자의 개수 N (1 ≤ N ≤ 100)이 주어진다. 둘째 줄에 숫자 N개가 공백없이 주어진다.        
        
출력               
입력으로 주어진 숫자 N개의 합을 출력한다.         
       
예제 입력 1         
1         
1         
예제 출력 1         
1        
예제 입력 2        
5         
54321       
예제 출력 2                 
15                    
                            
## 코드
```swift
코드 1
print(readLine()!.map{Int(String($0))!}.reduce(0, +))

코드 2
let input = readLine()!
var sum = 0

for i in input {
    sum = sum + Int(String(i))!
}

print(sum)
```

## 해결방법
1. 입력받은 문자열 언래핑     // String      
2. map으로 [Character] -> [String] -> [Int] 로 변환     // [Int]       
3. reduce로 [Int] 값 모두 더하여 반환             
        
## 새로 배운 문법
String.map{ Int(String($0))! }          
for item in StringValue {
    
}

## 참조
[String 반복문](https://sapjilkingios.tistory.com/12)
