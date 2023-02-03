# 2439
## 별 찍기 - 2

문제          
첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제        
       
하지만, 오른쪽을 기준으로 정렬한 별(예제 참고)을 출력하시오.       
       
입력       
첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.        
      
출력       
첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.      
       
예제 입력 1       
5      
예제 출력 1       
    *     
   **       
  ***     
 ****               
*****            
                            
                                        
## 코드      
```swift
내가 해결한 코드
let input = Int(readLine()!)!
for n in 1...input {
for i in 1...input {
    print(input > i+n-1 ? " " : "*", terminator: "")
}
    print()
}


참조하고 해결한 코드
for n in 1...input {
    for _ in stride(from: input, to: n, by: -1) {
        print(" ", terminator: "")
    }
    for _ in stride(from: 0, to: n, by: +1) {
        print("*", terminator: "")
    }
    print()
}

```

## 해결방법
내가 해결한 방법     
1. 이중 반복문으로 흐름 제어       
2. 삼항 연산자로 조건문 사용         
      
참조하고 해결한 방법      
1. 반복문 내부에 2개의 반복문 제어      
2. stride 범위제어 함수를 이용하여 조건 설정      
        
## 새로 배운 문법
for _ in stride(from: 부터, to: 까지(end 포함 x), by: 연산) { }          
for _ in stride(from: 부터, through: 까지(end 포함 o), by: 연산) { }

## 참조      
[백준 2439번 참조](https://velog.io/@leeyoungwoozz/Swift-%EB%B0%B1%EC%A4%80-2439)      
[stride 함수](https://jud00.tistory.com/entry/%EC%98%A4%EB%8A%98%EC%9D%98-Swift-%EC%A7%80%EC%8B%9D-stride-%ED%95%A8%EC%88%98-%EB%B0%B1%EC%A4%80-2742%EB%B2%88-%EA%B8%B0%EC%B0%8D-N-%EC%97%AD%EC%88%98-%EA%B5%AC%ED%95%98%EA%B8%B0)    

