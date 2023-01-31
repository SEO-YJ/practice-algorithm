# 10951
## A + B - 4

문제          
두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.       
        
입력       
입력은 여러 개의 테스트 케이스로 이루어져 있다.        
        
각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)      
       
출력       
각 테스트 케이스마다 A+B를 출력한다.       
       
예제 입력 1         
1 1      
2 3       
3 4       
9 8      
5 2      
예제 출력 1         
2       
5      
7       
17       
7       
                      
                      
## 코드
```swift
while let input = readLine() {
    print(input.split(separator: " ").map{ Int($0)! }.reduce(0){ $0 + $1 })
}
```

## 해결방법
1. 입력 테스트 케이스가 여러 개이므로 while 문 사용     
2. while의 condition에 만약 입력이 있으면 while 실행     
3. 입력이 정수 2개 문자열이므로, split으로 문자열 배열 생성    // [String]     
4. map으로 정수형 배열로 변환                           // [Int]      
5. reduce로 정수형 배열의 모든 아이템 더함                 

## 새로 배운 문법
while let input = readLine()       


## 참조

