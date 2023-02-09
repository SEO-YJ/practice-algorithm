# 2908
## 상수

문제
상근이의 동생 상수는 수학을 정말 못한다. 상수는 숫자를 읽는데 문제가 있다. 이렇게 수학을 못하는 상수를 위해서 상근이는 수의 크기를 비교하는 문제를 내주었다. 상근이는 세 자리 수 두 개를 칠판에 써주었다. 그 다음에 크기가 큰 수를 말해보라고 했다.        
          
상수는 수를 다른 사람과 다르게 거꾸로 읽는다. 예를 들어, 734와 893을 칠판에 적었다면, 상수는 이 수를 437과 398로 읽는다. 따라서, 상수는 두 수중 큰 수인 437을 큰 수라고 말할 것이다.         
           
두 수가 주어졌을 때, 상수의 대답을 출력하는 프로그램을 작성하시오.          
         
입력          
첫째 줄에 상근이가 칠판에 적은 두 수 A와 B가 주어진다. 두 수는 같지 않은 세 자리 수이며, 0이 포함되어 있지 않다.          
        
출력          
첫째 줄에 상수의 대답을 출력한다.         
        
예제 입력 1        
734 893         
예제 출력 1         
437       
예제 입력 2        
221 231       
예제 출력 2         
132                  
                                       
## 코드
```swift
내가 해결한 코드
let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var aArr = String(input[0]).map{ Int(String($0))! }
var bArr = String(input[1]).map{ Int(String($0))! }

func swap(arr: inout [Int]) {
    var num = 0
    
    num = arr[0]
    arr[0] = arr[2]
    arr[2] = num
}
swap(arr: &aArr)
swap(arr: &bArr)

func compareArray(arr1: [Int], arr2: [Int]) {
    let num1 = arr1[0]*100 + arr1[1]*10 + arr1[2]
    let num2 = arr2[0]*100 + arr2[1]*10 + arr2[2]
    
    print(num1 > num2 ? num1 : num2)
}

compareArray(arr1: aArr, arr2: bArr)


참조하고 해결한 코드
print(readLine()!.split(separator: " ").map{ Int(String($0.reversed()))! }.max()!)
```

## 해결방법
내가 해결한 방법     
1. 문자열로 두 숫자 받은 것을 [Int]로 만듬      
2. [Int]의 아이템들을 String -> [Int]로 분해     
3. swap 함수에서 inout 키워드를 이용해 조건에 맞게 숫자 변경      
4. 조건에 맞게 출력      
      
참조하고 해결한 방법      
1. 문자열로 두 숫자 입력 받음      
2. [String]으로 만듬      
3. String.reversed()로 문자열의 정렬을 역순으로 변경       
4. reversed()의 반환값이 ReversedCollection<Substring>이므로 (split의 반환값이 [Substring]) String으로 타입 캐스팅     
5. Int 타입 캐스팅 후, max()로 최댓값 출력      
        
## 새로 배운 문법
1. func functionName(a: inout Type) { } , functionName(a: &argument)      
2. String.reversed() -> ReversedCollection<String>        

## 참조
[inout 키워드](https://babbab2.tistory.com/78)       
[String.reversed()](https://m.blog.naver.com/bc6793/222074624358)         


