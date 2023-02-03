# Swift 알고리즘 문법

# Tip
### 입력
- readLine() -> String?            
    - 사용자로부터 입력 받을 수 있음    
    - playground에서 사용 불가      
    
### Character -> UInt8 (아스키코드 값)      
- Character.asciiValue!     
    - Character 타입 값을 아스키코드 값으로 변환 가능      
    - .asciiValue는 UInt8? 반환하므로 옵셔널 언래핑 해줘야함.      
      


# Collection
## Array
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
        
### 문자열 배열 오름차순, 내림차순 정렬    
- [String].sort() -> Void       
    - 문자열 배열을 오름차순 정렬      
- [String].sort(by: >) -> Void     
    - 문자열 배열을 내림차순 정렬      
    - 원본 배열 자체를 정렬하여 반환값이 없음 (sorted()와의 차이)             
    - 시간복잡도: O(nlogn)     
    - 새로운 배열을 생성하여 메모리 낭비할 필요 없을 경우에 사용 (성능)           
- [String].sorted() -> [String]     
    - 문자열 배열을 오름차순 정렬    
    - 원본은 그대로 있고, 추가로 정렬된 배열을 반환 (sort()와의 차이)     
    - 새로운 변수에 정렬된 배열을 저장해서 사용.     
- [String].sorted(by: >) -> [String]      
    - 문자열 배열을 내림차순 정렬      
    - 원본은 그대로 있고, 추가로 정렬된 배열을 반환 (sort()와의 차이)     
    - 새로운 변수에 정렬된 배열을 저장해서 사용.     
    - 시간복잡도: O(nlogn)      
    - 원본 배열을 유지해야 할 경우에 사용 (성능)       
      
      
      
## Dictionary
### 딕셔너리 생성
- var dictionary =  &#91;String: Int&#93;()        
    - 딕셔너리를 생성      
    
### 딕셔너리 값의 최대, 최소값 반환 
- Dictionary.values.max() -> Element?     
    - 딕셔너리 값의 최댓값 반환     
    - Int, Float, Double 사용 가능해 보임     
- Dictionary.values.min() -> Element?     
    - 딕셔너리 값의 최솟값 반환    
    - Int, Float, Double 사용 가능해 보임 


    
# Type
### 형변환
- Int(value) -> Int?     
    - 값이 형변환이 안 되는 경우 nil 반환     
    - 형변환을 확신하는 경우에는 강제 언래핑 !      
## String 
### 문자열 생성     
- String(repeating: Character, count: Int) -> String?      
    - count 값만큼 Character를 반복하여 String 생성     
### 문자열 대문자, 소문자 변환      
- String.uppercased() -> String      
    - 문자열을 대문자로 변환      
- String.lowercased() -> String      
    - 문자열을 소문자로 변환     
    - 시간복잡도: O(n)    
    
    
      
# Control Flow 
## Loop
### 문자열 + 반복문     
- for item in String { }      
    - String의 문자열 갯수만큼 반복문 내부의 코드를 반복하여 실행     
    - item에는 String의 아이템이 Character 타입 값으로 하나씩 사용됨       
     
- String.forEach{ $0 }      
    - String의 문자열 갯수만큼 클로저 내부의 코드를 반복하여 실행      
    - $0에는 문자열의 문자가 하나씩 사용됨      
    
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
    
### 딕셔너리 + 반복문      
Dictionary.forEach{ $0, $1 } -> Void      
    - Dictionary의 갯수만큼 클로저 내부의 코드를 반복하여 실행    
    - $0에는 해당 딕셔너리 아이템의 key, $1에는 해당 딕셔너리 아이템의 value가 하나씩 사용됨            
    - 원래 딕셔너리의 값은 옵셔널 타입인데, 클로저 내부의 $1은 옵셔널이 해제된 값임     
      
### while + readLine()      
- while let name = readLine() { }       
    - 입력값이 있을 경우, 반복문 실행      
    - 입력값이 있으면, String 타입으로 name을 반복문 내부에서 사용 가능 -> 옵셔널 언래핑      

### 범위 제어 함수 
- for _ in stride(from: 부터, to: 까지(end 포함 x), by: 연산) { }       
    - from 부터, to 까지 by 연산으로 범위를 제어한다.      
        - from < to 일 경우: from부터 to미만까지 by 연산       
        - from > to 일 경우: from부터 to초과까지 by 연산        

- for _ in stride(from: 부터, through: 까지(end 포함 o), by: 연산) { }       
    - from 부터, through 까지 by 연산으로 범위를 제어한다.      
        - from < through 일 경우: from부터 through까지 by 연산       
        - from > to 일 경우: from부터 through까지 by 연산   
        
       
      
## Condition 
### 삼항연산자 
- Condition ? True Output : False Output            
    - 조건 ? 참일 경우 값 : 틀릴 경우 값       
    - print(Condition ? True Output : False Output)으로 많이 사용      

