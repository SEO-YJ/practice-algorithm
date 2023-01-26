# 8958
## OX퀴즈

문제
"OOXXOXXOOO"와 같은 OX퀴즈의 결과가 있다. O는 문제를 맞은 것이고, X는 문제를 틀린 것이다. 문제를 맞은 경우 그 문제의 점수는 그 문제까지 연속된 O의 개수가 된다. 예를 들어, 10번 문제의 점수는 3이 된다.        
        
"OOXXOXXOOO"의 점수는 1+2+0+0+1+0+0+1+2+3 = 10점이다.       
        
OX퀴즈의 결과가 주어졌을 때, 점수를 구하는 프로그램을 작성하시오.       
       
입력        
첫째 줄에 테스트 케이스의 개수가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고, 길이가 0보다 크고 80보다 작은 문자열이 주어진다. 문자열은 O와 X만으로 이루어져 있다.       
       
출력        
각 테스트 케이스마다 점수를 출력한다.       
        
예제 입력 1       
5      
OOXXOXXOOO       
OOXXOOXXOO     
OXOXOXOXOXOXOX       
OOOOOOOOOO      
OOOOXOOOOXOOOOX      
예제 출력 1       
10      
9      
7        
55        
30         
         
              
## 코드
```swift
코드 1
let count = Int(readLine()!)!

for _ in 1...count {
    var score = [Int]([0])
    let input = readLine()!.map{ $0 }

    for (index, value) in input.enumerated() {
        if value == "O" {
            if score[index] > 0 {
                score.append(score[index] + 1)
            } else {
                score.append(1)
            }
        } else {
            score.append(0)
        }
    }
    print(score.reduce(0){$0 + $1})
}

코드 2
let count = Int(readLine()!)!
var score = [Int]([0])

for _ in 1...count {
    let arr = readLine()!.map{ $0 }
    for (index, value) in arr.enumerated() {
        if value == "O" && score[index] == 0 {
            score.append(1)
        } else if value == "O" && score[index] != 0 {
            score.append(score[index] + 1)
        } else {
            score.append(0)
        }
    }
    print(score.reduce(0, +))
    score.removeAll()
    score.append(0)
}
```

## 해결방법
1. 반복횟수 받음     
2. 점수를 저장할 배열 생성           
3. 문자열을 map을 이용해 Character 배열로 저장     // [Character]       
4. Character 배열의 인덱스와 값을 사용하기 위해 for in 구문 사용         
5. 조건을 비교하여 score에 점수 저장       
6. score의 모든 값을 reduce 함수를 사용하여 출력           
     

## 새로 배운 문법
Array.reduce(initialValue){$0 + $1}
Array.reduce(initialValue, +)        
      

## 참조

