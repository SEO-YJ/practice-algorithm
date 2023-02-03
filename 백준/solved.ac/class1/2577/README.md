# 2577
## 숫자의 개수

문제        
세 개의 자연수 A, B, C가 주어질 때 A × B × C를 계산한 결과에 0부터 9까지 각각의 숫자가 몇 번씩 쓰였는지를 구하는 프로그램을 작성하시오.           

예를 들어 A = 150, B = 266, C = 427 이라면 A × B × C = 150 × 266 × 427 = 17037300 이 되고, 계산한 결과 17037300 에는 0이 3번, 1이 1번, 3이 2번, 7이 2번 쓰였다.      
               
입력                         
첫째 줄에 A, 둘째 줄에 B, 셋째 줄에 C가 주어진다. A, B, C는 모두 100보다 크거나 같고, 1,000보다 작은 자연수이다.                   

출력            
첫째 줄에는 A × B × C의 결과에 0 이 몇 번 쓰였는지 출력한다. 마찬가지로 둘째 줄부터 열 번째 줄까지 A × B × C의 결과에 1부터 9까지의 숫자가 각각 몇 번 쓰였는지 차례로 한 줄에 하나씩 출력한다.        
          
예제 입력 1       
150       
266       
427                   
예제 출력 1        
3      
1       
0       
2        
0       
0       
0       
2       
0         
0               
                            
                                        
## 코드      
```swift
var sum = 1
var count = 0

while let input = readLine() {
    sum *= Int(input)!
    count += 1
    if count == 3 {
        break
    }
}

let arr = String(sum).map{ Int(String($0))! }

var dict = [Int: Int]()
arr.forEach {
    dict[$0] = dict[$0] == nil ? 1 : dict[$0]! + 1
}


for i in stride(from: 0, to: 10, by: +1) {
    print(dict[i] == nil ? "0" : dict[i]!)
}

```

## 해결방법
내가 해결한 방법     
1. 반복문에 3개를 입력받는 조건으로 입력 받음       
2. 곱한 숫자를 [Int] 배열로 만듬      // Int -> String -> [Character] -> [String] -> [Int]     
3. 딕셔너리 생성      
4. 딕셔너리에 key: Int 배열 아이템, value: Int 배열 아이템 각 갯수 할당       
5. stride 범위 제어 함수로 0~9까지 각 아이템의 갯수 출력       
      

        
## 새로 배운 문법


## 참조      


