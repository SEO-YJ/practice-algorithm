# 2675
## 문자열 반복

문제
문자열 S를 입력받은 후에, 각 문자를 R번 반복해 새 문자열 P를 만든 후 출력하는 프로그램을 작성하시오. 즉, 첫 번째 문자를 R번 반복하고, 두 번째 문자를 R번 반복하는 식으로 P를 만들면 된다. S에는 QR Code "alphanumeric" 문자만 들어있다.     
      
QR Code "alphanumeric" 문자는 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\$%*+-./: 이다.      
       
입력       
첫째 줄에 테스트 케이스의 개수 T(1 ≤ T ≤ 1,000)가 주어진다. 각 테스트 케이스는 반복 횟수 R(1 ≤ R ≤ 8), 문자열 S가 공백으로 구분되어 주어진다. S의 길이는 적어도 1이며, 20글자를 넘지 않는다.       
      
출력      
각 테스트 케이스에 대해 P를 출력한다.      
     
예제 입력 1      
2      
3 ABC     
5 /HTP      
예제 출력 1       
AAABBBCCC      
/////HHHHHTTTTTPPPPP      
         
              
## 코드
```swift
let count = Int(readLine()!)!

for _ in 1...count {
    let aArr = readLine()!.split(separator: " ")
    let chaArr = aArr[1].map{ $0 }
    chaArr.forEach {
        print(String(repeating: $0, count: Int(aArr[0])!), terminator: "")
    } 
    print()
}
```

## 해결방법
1. 반복횟수 받음     
2. 숫자와 문자열을 우선 문자열 배열에 저장      
3. 문자열을 map을 이용해 Character 배열로 저장     // [Character]       
4. Character 배열을 forEach 메서드로 아이템 하나씩 반복     
5. 아이템을 입력 받은 숫자만큼 반복하여 String으로 반환하여 출력      
     

## 새로 배운 문법
String.map{$0} -> [Character]          
      

## 참조

