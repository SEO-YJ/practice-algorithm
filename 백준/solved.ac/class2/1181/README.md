# 1181
## 단어 정렬

문제
알파벳 소문자로 이루어진 N개의 단어가 들어오면 아래와 같은 조건에 따라 정렬하는 프로그램을 작성하시오.       
        
길이가 짧은 것부터              
길이가 같으면 사전 순으로             
단, 중복된 단어는 하나만 남기고 제거해야 한다.         
         
입력         
첫째 줄에 단어의 개수 N이 주어진다. (1 ≤ N ≤ 20,000) 둘째 줄부터 N개의 줄에 걸쳐 알파벳 소문자로 이루어진 단어가 한 줄에 하나씩 주어진다. 주어지는 문자열의 길이는 50을 넘지 않는다.           
       
출력          
조건에 따라 정렬하여 단어들을 출력한다.       
        
예제 입력 1        
13        
but       
i       
wont       
hesitate      
no      
more        
no       
more      
it       
cannot              
wait      
im       
yours      
예제 출력 1           
im      
it      
no       
but        
more       
wait      
wont       
yours      
cannot       
hesitate        
              
## 코드
```swift
참조하고 해결한 코드
let a = Int(readLine()!)!
var inputSet = Set<String>()        // 중복된 아이템 제거위해 Set에 저장


for _ in 1...a {
    inputSet.insert(readLine()!)
}

var inputArray = inputSet.sorted {
    $0.count == $1.count ? $0 < $1 : $0.count < $1.count
}

inputArray.forEach{
    print($0)
}
```

## 해결방법
1. 사용자에게 단어 갯수랑 단어 입력받음     
2. 중복된 아이템을 받지 않기 위해 Set에 저장      
3. 단어 갯수 만큼 입력 받음      
4. Set를 sorted(by:) 인스턴스 메서드로 정렬     
5. $0이랑 $1의 길이가 같을 경우, 사전 순으로, 길이가 다를 경우 길이가 짧은 것 순으로      

     

## 새로 배운 문법
Set.insert()      
Set.sorted{}     

      

## 참조
[sorted(by:)](https://developer.apple.com/documentation/swift/set/sorted(by:)
