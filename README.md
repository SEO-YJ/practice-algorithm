# Swift 알고리즘 문법

## Tip
### 입력
- readLine() -> String?            
    - 사용자로부터 입력 받을 수 있음    
    - playground에서 사용 불가      
    
### Character -> UInt8 (아스키코드 값)      
- CharacterValue.asciiValue!     
    - Character 타입 값을 아스키코드 값으로 변환 가능      
    - .asciiValue는 UInt8? 반환하므로 옵셔널 언래핑 해줘야함.      
      

## Collection
### 문자열 -> 배열
- String.split(separator: Character) -> [SubString]      

- String.components(separatedBy: Character) -> [String]      
    - Foundation 프레임워크에 있어 import 해야 사용 가능.    
    
### 배열 -> 다른 타입 배열
- map{ Type($0)! } -> [Type]       
    - 배열의 아이템을 다른 타입으로 변환하고 싶을 경우에 사용      
    
### 배열 생성     
- Array(1...10) -> [Int]      
    - 1에서 10까지 오름차순으로 아이템이 저장된 [Int] 생성     
    
### 배열 아이템 추가    
- Array.append() -> Void       
    - 배열에 아이템 추가시 사용     
    - 순차적으로 저장     
     
### 배열 최대, 최소값 반환 
- Array.max() -> Element?     
    - 배열 아이템의 최댓값 반환     
    - Int, Float, Double 사용 가능해 보임     
- Array.min() -> Element?     
    - 배열 아이템의 최솟값 반환    
    - Int, Float, Double 사용 가능해 보임       
    
### 배열 인덱스 반환     
- Array.firstIndex(of: Element) -> Int?      
    - 배열 내부에 Element가 존재할 경우, 해당값을 갖는 아이템의 첫번째 인덱스 반환      
    
### 문자열 -> [Character] 
- String.map{ $0 } -> [Character]     
    - 문자열에 타입 캐스팅 없이, map 함수를 사용하면 Character 배열이 된다.     

### 문자열 -> [Int]      
- String,map{ Int(String($0))! } -> [Int]       
    - 문자열을 [Int]로 만들고 싶으면, Character -> String -> Int 순서로 타입 캐스팅해야한다.      
    
### 배열 모든 요소 더하기
- Array.reduce(initialValue){$0 + $1} -> result      
- Array.reduce(initialValue, +) -> result          
        - 배열 아이템의 모든 요소를 연산하여 반환     
        
    
    
## Type
### 형변환
- Int(value) -> Int?     
    - 값이 형변환이 안 되는 경우 nil 반환     
    - 형변환을 확신하는 경우에는 강제 언래핑 !      
    
### 문자열 생성     
- String(repeating: Character, count: Int) -> String?      
    - count 값만큼 Character를 반복하여 String 생성     
      
      
## Loop
### 배열 + 반복문     
- for value in Array { }     
    - Array의 갯수만큼 반복문 내부의 코드를 반복하여 실행    
    - value에는 배열의 아이템이 하나씩 사용됨     
     
- for (index, value) in Array.enumerated() { }
    - Array의 갯수만큼 반복문 내부의 코드를 반복하여 실행    
    - index에는 배열 아이템의 인덱스, value에는 배열의 아이템이 하나씩 사용됨     
            
- Array.forEach{ $0 } -> Void      
    - Array의 갯수만큼 클로저 내부의 코드를 반복하여 실행    
    - $0에는 배열의 아이템이 하나씩 사용됨      

### 문자열 + 반복문     
- for item in StringValue { }      
    - String의 문자열 갯수만큼 반복문 내부의 코드를 반복하여 실행     
    - item에는 String의 아이템이 Character 타입 값으로 하나씩 사용됨       

### while + readLine()      
- while let name = readLine() { }       
    - 입력값이 있을 경우, 반복문 실행      
    - 입력값이 있으면, String 타입으로 name을 반복문 내부에서 사용 가능 -> 옵셔널 언래핑      

