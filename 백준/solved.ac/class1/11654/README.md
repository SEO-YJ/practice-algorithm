# 11654
## 아스키코드

문제
알파벳 소문자, 대문자, 숫자 0-9중 하나가 주어졌을 때, 주어진 글자의 아스키 코드값을 출력하는 프로그램을 작성하시오.        

입력      
알파벳 소문자, 대문자, 숫자 0-9 중 하나가 첫째 줄에 주어진다.        
       
출력        
입력으로 주어진 글자의 아스키 코드 값을 출력한다.       
       
예제 입력 1        
A     
예제 출력 1        
65                  
                            
## 코드
```swift
print(Character(readLine()!).asciiValue!)
```

## 해결방법
1. 입력받은 문자열을 Character 타입으로 타입캐스팅      
2. Character 값을 asciiValue로 변환               // UInt8?
3. 옵셔널이므로 강제 언래핑                          // UInt8         
        
## 새로 배운 문법
CharacterValue.asciiValue!       


## 참조
[아스키코드 출력](https://0urtrees.tistory.com/223)      
