# 1018
## 체스판 다시 칠하기

문제            
지민이는 자신의 저택에서 MN개의 단위 정사각형으로 나누어져 있는 M×N 크기의 보드를 찾았다. 어떤 정사각형은 검은색으로 칠해져 있고, 나머지는 흰색으로 칠해져 있다. 지민이는 이 보드를 잘라서 8×8 크기의 체스판으로 만들려고 한다.         
          
체스판은 검은색과 흰색이 번갈아서 칠해져 있어야 한다. 구체적으로, 각 칸이 검은색과 흰색 중 하나로 색칠되어 있고, 변을 공유하는 두 개의 사각형은 다른 색으로 칠해져 있어야 한다. 따라서 이 정의를 따르면 체스판을 색칠하는 경우는 두 가지뿐이다. 하나는 맨 왼쪽 위 칸이 흰색인 경우, 하나는 검은색인 경우이다.         
         
보드가 체스판처럼 칠해져 있다는 보장이 없어서, 지민이는 8×8 크기의 체스판으로 잘라낸 후에 몇 개의 정사각형을 다시 칠해야겠다고 생각했다. 당연히 8*8 크기는 아무데서나 골라도 된다. 지민이가 다시 칠해야 하는 정사각형의 최소 개수를 구하는 프로그램을 작성하시오.       
        
입력            
첫째 줄에 N과 M이 주어진다. N과 M은 8보다 크거나 같고, 50보다 작거나 같은 자연수이다. 둘째 줄부터 N개의 줄에는 보드의 각 행의 상태가 주어진다. B는 검은색이며, W는 흰색이다.        
          
출력         
첫째 줄에 지민이가 다시 칠해야 하는 정사각형 개수의 최솟값을 출력한다.      
         
예제 입력 1        
8 8        
WBWBWBWB       
BWBWBWBW       
WBWBWBWB        
BWBBBWBW       
WBWBWBWB       
BWBWBWBW       
WBWBWBWB       
BWBWBWBW        
예제 출력 1        
1            
         
예제 입력 2       
10 13        
BBBBBBBBWBWBW      
BBBBBBBBBWBWB             
BBBBBBBBWBWBW        
BBBBBBBBBWBWB      
BBBBBBBBWBWBW       
BBBBBBBBBWBWB       
BBBBBBBBWBWBW      
BBBBBBBBBWBWB       
WWWWWWWWWWBWB         
WWWWWWWWWWBWB       
예제 출력 2       
12           
              
## 코드
```swift
참조하고 해결한 코드
//MARK: 1018
let inputNum = readLine()!.split(separator: " ").map{ Int(String($0))! }
// y개수, x개수 입력 받음

var inputBoard = [[String]]()
inputBoard.append(Array(repeating: ".", count: inputNum[1] + 1))
// [., ., ., ., ., ...] 삽입

for _ in 1...inputNum[0] {
    inputBoard.append(["."] + readLine()!.map{String($0)})
    }

// [1, 1] 부터 시작

var resultInt: [Int] = [Int]()

func chessBoardChangeCount(startX: Int, startY: Int, board: [[String]]) -> Int {
    
var countResultWB = 0
var countResultBW = 0
    
for countY in 0...7 {
    for countX in 0...7 {
        if (countY + countX).isMultiple(of: 2) {
            if board[countY + startY][countX + startX] == "B" {
                countResultWB += 1
            }
        } else {
            if board[countY + startY][countX + startX] == "W" {
                countResultWB += 1
            }
        }
    }
}
    
for countY in 0...7 {
    for countX in 0...7 {
        if (countY + countX).isMultiple(of: 2) {
            if board[countY + startY][countX + startX] == "W" {
                countResultBW += 1
            }
        } else {
            if board[countY + startY][countX + startX] == "B" {
                countResultBW += 1
            }
        }
    }
}
    
    return min(countResultWB, countResultBW)
}

for y in 1...(inputNum[0] - 8 + 1) {
    for x in 1...(inputNum[1] - 8 + 1) {
        resultInt.append(chessBoardChangeCount(startX: x, startY: y, board: inputBoard))
    }
}

print(resultInt.min()!)

```

## 해결방법
1. Y 판의 갯수, X 판의 갯수 입력 받음     
2. 2차원 배열 생성     // [[String]]      
3. [1][1] 부터 String 값을 입력 받기 위해 Array(repeating: ".", count: inputNum[1] + 1)으로 배열 정리     
4. Y 판의 갯수 만큼 값을 받아옴      
5. chessBoardChangeCount 함수 선언      
    - 1. 2중 반복문 작성      
    - 2. 조건문으로 짝수, 홀수에 따라 WB, BW 비교      
    - 3. 조건에 맞으면 countResultWB, countResultBW 값 증가       
    - 4. min() 으로 작은 값 반환     
6. 2중 반복문으로 모든 체스판에 함수 적용하여 제일 작은 값 출력     
     

## 새로 배운 문법
var array = [[String]] -> array[y][x]
[[String]].append(Array(repeating: value, count: count))      
Int.isMultiple(of: IntValue) -> Bool      
min(value1, value2)      

      

## 참조
[2차원 배열](https://babbab2.tistory.com/130)      
[백준 1018번 참조](https://developer-p.tistory.com/209)      
