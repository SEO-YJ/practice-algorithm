# 1157
## 단어 공부

문제
알파벳 대소문자로 된 단어가 주어지면, 이 단어에서 가장 많이 사용된 알파벳이 무엇인지 알아내는 프로그램을 작성하시오. 단, 대문자와 소문자를 구분하지 않는다.          
        
입력           
첫째 줄에 알파벳 대소문자로 이루어진 단어가 주어진다. 주어지는 단어의 길이는 1,000,000을 넘지 않는다.       
        
출력         
첫째 줄에 이 단어에서 가장 많이 사용된 알파벳을 대문자로 출력한다. 단, 가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 ?를 출력한다.        
        
예제 입력 1        
Mississipi       
예제 출력 1        
?       
예제 입력 2        
zZa        
예제 출력 2             
Z        
예제 입력 3               
z         
예제 출력 3       
Z                      
                                  
## 코드
```swift
내가 해결한 코드
var inputArr = readLine()!.uppercased().map{String($0)}
var input = inputArr.sorted(by: <)

var score = [Int]()
var arr = [String]()
var scoreNum = 0

score.append(1)
arr.append(input[0])

if input.count > 1 {
for n in 1...input.count-1 {
    if arr[n-1] == input[n] {
        score[scoreNum] += 1
        arr.append(input[n])
    } else {
        scoreNum += 1
        score.append(1)
        arr.append(input[n])
    }
}
}

var max = 0
var equal = 0
var answer = ""
var count = 0

for n in score {
    count += n
    if max < n {
        equal = 0
        max = n
        answer = input[count-1]
    } else if max == n {
        equal = n
        }
    }


if equal == 0 {
    print(answer)
} else {
    print("?")
}


참조하고 해결한 코드
let input = readLine()!.uppercased()
var dict = [String: Int]()

input.forEach {
    if dict[String($0)] == nil {
        dict[String($0)] = 1
    } else {
        dict[String($0)] = dict[String($0)]! + 1
    }
}

var output = ""

dict.forEach {
    if $1 == dict.values.max() {
        output += $0
    }
}

print(output.count > 1 ? "?" : output)
```

## 해결방법
내가 해결한 방법     
1. 입력 받은 문자열을 uppercased() 메서드로 대문자로 변환 후, [Character] -> [String] 변환   // [String]     
2. [String]을 sorted(by: <) 메서드로 오름차순 정렬     // [String]     
3. 점수 저장 배열, 비교할 문자 배열, 점수 저장 인덱스 변수 선언       
4. 점수 저장 배열, 비교할 문자 배열 초기값 할당       
5. 조건문으로 같은 문자일 경우와 다른 문자일 경우 비교      
6. for in 배열 반복문으로 공동 최고점이 있는지 비교       
7. 문제 조건대로 출력      
      
참조하고 해결한 방법      
1. 입력 받은 문자열을 uppercased() 메서드로 대문자로 변환     // String       
2. 문자를 key, 점수를 value로 저장할 dictionary 생성      // [String: Int]      
3. forEach로 문자열의 문자 하나씩 반복     
4. 반복문 내부에서 dictionary에 문자와 점수 저장       
5. forEach로 딕셔너리의 아이템 하나씩 반복     
6. 점수의 최고점과 점수가 같을 경우 output 변수에 key 할당      
7. output에 문자 하나만 있을 경우와, 아닐 경우 삼항연산자로 출력     
        
## 새로 배운 문법
String.uppercased() -> String             
String.lowercased() -> String      
[String].sort() -> Void         
[String].sorted(by: <) -> [String]            
var dictionary = [String: Int]()      
String.forEach{ }       
Dictionary.forEach{ }      
Dictionary.values.max() -> Element?             
Condition ? True Output : False Output      

## 참조
[문자열 대소문자 변경](https://wody.tistory.com/2)       
[문자열 오름차순, 내림차순 정렬](https://didu-story.tistory.com/206)       
[백준 1157번 참조](https://sapjilkingios.tistory.com/entry/Swift-%EB%B0%B1%EC%A4%80-1157%EB%B2%88)     

