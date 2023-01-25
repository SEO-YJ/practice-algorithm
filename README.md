# Swift 알고리즘 문법

## Tip
### 입력
- readLine()       
    - 반환타입: String?
    - 사용자로부터 입력 받을 수 있음    
    - playground에서 사용 불가      
      

## Collection
### 문자열 -> 배열
- String.split(separator: Character)      
    - 반환타입: [Substring]     
- String.components(separatedBy: Character)     
    - 반환타입: [String]      
    - Foundation 프레임워크에 있어 import 해야 사용 가능.    
    
### 배열 -> 다른 타입 배열
- map{ Type($0)! }       
    - 반환타입: [Type]      
    - 배열의 아이템을 다른 타입으로 변환하고 싶을 경우에 사용      
    
### 배열 생성     
- Array(1...10)     
    - 반환타입: [Int]     
    - 1에서 10까지 오름차순으로 아이템이 저장된 [Int] 생성     
    
    
## Type
### 형변환
- Int(value)      
    - 반환타입: Int?      
    - 값이 형변환이 안 되는 경우 nil 반환     
    - 형변환을 확신하는 경우에는 강제 언래핑 !      
    
### 문자열 생성     
- String(repeating: Character, count: Int)      
    - 반환타입: String      
    - count 값만큼 Character를 반복하여 String 생성     
      
      
## Loop
### 배열 + 조건문    
- for value in Array { }     
    - Array의 갯수만큼 반복문 내부의 코드를 반복하여 실행    
    - value에는 배열의 아이템이 하나씩 사용됨     
     
- for (index, value) in Array.enumerated() { }
    - Array의 갯수만큼 반복문 내부의 코드를 반복하여 실행    
    - index에는 배열 아이템의 인덱스, value에는 배열의 아이템이 하나씩 사용됨     
            
- Array.forEach{ $0 }      
    - 반환타입: X     
    - Array의 갯수만큼 클로저 내부의 코드를 반복하여 실행    
    - $0에는 배열의 아이템이 하나씩 사용됨      



