# 10809
## 알파벳 찾기

문제
알파벳 소문자로만 이루어진 단어 S가 주어진다. 각각의 알파벳에 대해서, 단어에 포함되어 있는 경우에는 처음 등장하는 위치를, 포함되어 있지 않은 경우에는 -1을 출력하는 프로그램을 작성하시오.          
         
입력          
첫째 줄에 단어 S가 주어진다. 단어의 길이는 100을 넘지 않으며, 알파벳 소문자로만 이루어져 있다.        
         
출력                  
각각의 알파벳에 대해서, a가 처음 등장하는 위치, b가 처음 등장하는 위치, ... z가 처음 등장하는 위치를 공백으로 구분해서 출력한다.                     

만약, 어떤 알파벳이 단어에 포함되어 있지 않다면 -1을 출력한다. 단어의 첫 번째 글자는 0번째 위치이고, 두 번째 글자는 1번째 위치이다.
              
예제 입력 1         
baekjoon          
예제 출력 1           
1 0 -1 -1 2 -1 -1 -1 -1 4 3 -1 -1 7 5 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1           
                                               
## 코드
```swift
내가 해결한 코드
let input = readLine()!.map{Int(String($0.asciiValue!))!}

var answer = [Int](repeating: -1, count: 26)

for (index, value) in input.enumerated() {
    for n in 97...122 {
        if value == n && answer[n-97] == -1 {
            answer[n-97] = index
            break
            }
        }
    }


print(answer.map { "\($0)" }.joined(separator: " "))
```

## 해결방법
내가 해결한 방법     
1. 문자열 입력받음      
2. map으로 문자들을 아스키 코드로 변경 후 강제 언래핑    // UInt8? -> UInt8           
3. 아이템들을 UInt -> String -> Int? -> Int로 타입 캐스팅   // [Int]     
4. 답 배열을 -1 값으로 26개 [Int] 타입으로 생성      
5. 조건에 따라 2중 반복문 사용하여 answer 배열에 인덱스 값 저장     
6. [Int]인 answer 배열을 [String]으로 만든 후, joined 메서드로 문자열로 만들어 출력      

        
## 새로 배운 문법
1. var array = [Int](repeating: value, count: value) -> [Int]      
2. break      
3. [String].joined(separator: " ")       

## 참조
[joined 메서드](https://didu-story.tistory.com/m/196)       
      


