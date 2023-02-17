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
    - UInt8? -> Int 로 타입캐스팅하려면 exactly: 가 필요      
    - UInt8? -> String -> Int는 exactly: 필요 x      
      


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
- [Int](repeating: 1, count: 10) -> [Int]      
    - 아이템의 값을 1로 10개의 아이템을 가진 [Int] 생성    
    
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
- String.map{ Int(String($0))! } -> [Int]       
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
      
### 문자열 배열 -> 문자열      
- [String].joined(separator: " ")      
    - 문자열 배열의 아이템들을 separator의 값으로 연결하여 문자열로 반환한다.       
    
### 2차원 배열 선언
- var array = &#91;&#91;String#93;#93;() -> array[y][x]         
    - 아이템의 타입을 String으로 하는 2차원 배열 생성     
    - array[y][x]로 아이템 값 참조     
    - x: 행       
    - y: 열      
     
### 2차원 배열 아이템 추가     
- [[String]].append([String])     
    - 2차원 배열의 append는 해당 타입의 배열들을 추가할 수 있다.      
    - 배열이 아닌 그냥 기본 타입 값은 append로 추가할 수 없다.     
- [[String]].append(Array(repeating: StringValue, count: count))     
    - Array(repeating: , count: )로 배열을 직접 생성하여 인자로 넣어줄 수도 있다.      
    
    
      
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




## Set     
### Set 아이템 추가    
- Set.insert() -> Void       
    - Set에 아이템 추가시 사용     
    
### Set 정렬     
- Set<String>.sorted { } -> [String]    
    - 정의: sorted(by:)     
        - Returns the elements of the sequence, sorted using the given predicate as the comparison between elements.    
        - 아이템들 사이에서 비교하는 주어진 술어(true/false를 판단하는 식이나, boolean을 반환하는 함수)를 사용하여 정렬된 시퀀스(순서가 있는 문자)의 아이템들을 반환한다.
    - 선언: func sorted(by areInIncreasingOrder: (Self.Element, Self.Element) throws -> Bool) rethrows -> [Self.Element]      
    
    - 내 생각으로 정리한 sorted Instance Method 구성      
        - Parameter: areInIncreasingOrder      
            - 1. 함수의 전달인자로서의 클로저      
                - 함수 내부에서 원하는 코드블럭을 실행할 수 있다.    
                - 따로 클로저를 상수나 변수에 저장하여 전달 안해도됨.     
                - sorted 호출 시에 클로저를 작성하여 인자로 전달.      
            - 2. 후행 클로저(trailing closure)              
                - sorted 함수의 매개변수 마지막으로 전달됨.      
                - 따라서, 함수 밖에 구현 가능      
                
            ```swift
            후행 클로저
            클로저가 함수의 마지막 전달인자일 경우,
            1. 마지막 매개변수 이름 생략       
            2. 함수 소괄호 외부에 클로저 구현      
            
            // 후행 클로저 적용 전     
            Set.sorted(by: (String, String) throws -> Bool)   
            
            // 후행 클로저 적용 후 
            Set.sorted { (String, String) in
            code
            } 
            // 1. by 매개변수 이름 생략
            // 2. 함수 소괄호 외부에 클로저 구현    
            
            ```     
            
            - 3. 반환타입 생략    
                - areInIncreasingOrder 클로저 매개변수는 Bool 타입을 반환할 것이라는 것을 컴파일러도 알기에 클로저에서 반환타입 명시 안해도됨.     
                - in 키워드는 생략 불가    
                
            ```swift
            반환타입 생략
            
            // 반환타입 생략 적용 전     
            Set.sorted(by: { (String, String) -> throws Bool in 
            return Bool
            }) 
            
            // 반환타입 생략 적용 후 
            Set.sorted(by: { (String, String) in 
            return Bool
            })
            
            // 후행클로저 + 반환타입 생략 적용
            // Xcode에서는 아래 형태로 제공  
            Set.sorted { (String, String) in 
            return Bool
            }   
            ```    
            
            - 4. 단축 인자이름       
                - 클로저의 매개변수 이름이 불필요할 경우 활용      
                - 클로저의 매개변수 순서대로 $0, $1 ... 사용     
                
            ```swift
            단축 인자이름
            
            // 단축 인자이름 적용 전     
            Set.sorted { (String, String) in
            return Bool
            }
            
            // 단축 인자이름 적용 후
            Set.sorted {
            return $0 == $1
            }
            ```      
                
            - 5. 암시적 반환표현       
                - 클로저가 반환값이 있으면, 마지막 줄의 결과값은 암시적으로 반환 취급   
                
            ```swift
            암시적 반환표현
            
            // 암시적 반환표현 적용 전     
            Set.sorted { 
            return $0 == $1
            }
            
            // 암시적 반환표현 적용 후
            Set.sorted {
            $0 == $1
            }
            ``` 
            
            
        - throws, rethrows      
            - throws: areInIncreasingOrder 클로저가 오류를 던진다.   
                - func sorted(by areInIncreasingOrder: (Self.Element, Self.Element) <span style="color: red">throws -> Bool</span>) rethrows -> [Self.Element]     
                    - 1. areInIncreasingOrder 클로저는 오류를 던질 수 있는 클로저     
                    - 2. 오류가 나지 않을 경우 Bool 타입을 반환    
                           
            - rethrows: 자신의 매개변수로 전달받은 함수가 오류를 던진다는 것을 나타냄.    
                - 파라미터 중에 함수, 클로저가 에러를 throws 하는 경우에 이를 암시하도록 함수 선언할 경우, rethrows 키워드 사용       
                - func sorted(by areInIncreasingOrder: (Self.Element, Self.Element) throws -> Bool) <span style="color: red">rethrows -> [Self.Element]</span>      
                    - 1. sorted 함수는 오류를 던질 수 있는 클로저를 매개변수로 받음        
                    - 2. 오류가 나지 않을 경우 [Self.Element] 타입을 반환    
                    
    - 반환값: 시퀀스의 아이템들의 정렬된 배열     
    - 매개변수: areInIncreasingOrder     
        - A predicate that returns true if its first argument should be ordered before its second argument; otherwise, false.    
        - 첫번째 아이템이 두번째 아이템 앞에 정렬되는 것을 추천할 경우 true를 반환하고, 첫 번째 아이템이 두번째 아이템 뒤에 정렬되는 것을 추천할 경우 false를 반환하는 술어(boolean을 반환하는 클로저)이다.      
        
    - 고찰      
        - 아이템들의 타입이 Comparable 프로토콜을 준수하지 않는 경우
        - When you want to sort a sequence of elements that don’t conform to the Comparable protocol, pass a predicate to this method that returns true when the first element should be ordered before the second. The elements of the resulting array are ordered according to the given predicate.       
        - Comparable 프로토콜을 준수하지 않는 아이템들의 시퀀스를 정렬하려면 첫번째 인자가 두번째 인자 앞에 정렬되어야 할 때 true를 반환하는 이 메서드에 술어(boolean을 반환하는 클로저)를 전달한다. 결과 배열의 아이템들은 주어진 술어에 따라서 정렬된다.    
        - In the following example, the predicate provides an ordering for an array of a custom HTTPResponse type. The predicate orders errors before successes and sorts the error responses by their error code.     
        - 아래 예제에 따르면, 술어는 사용자가 정한 HTTPResonse type의 배열 순서를 제공한다. 술어는 성공하기 전에 에러를 정렬하고 에러 코드별로 에러 응답을 정렬한다.    

        - 아이템들의 타입이 Comparable 프로토콜을 준수하는 경우      
        - You also use this method to sort elements that conform to the Comparable protocol in descending order. To sort your sequence in descending order, pass the greater-than operator (>) as the areInIncreasingOrder parameter.      
        - 이 메서드를 사용하여 Comparable 프로토콜을 준수하는 아이템들을 내림차순으로 정렬할 수 있다. 시퀀스를 내림차순으로 정렬하려면, > 연산자를 areInIncreasingOrder Parameter로 전달한다.    
        ```swift
        let students: Set = ["Kofi", "Abena", "Peter", "Kweku", "Akosua"]
        let descendingStudents = students.sorted(by: >)
        print(descendingStudents)
        // Prints "["Peter", "Kweku", "Kofi", "Akosua", "Abena"]"
        ```
        - Calling the related sorted() method is equivalent to calling this method and passing the less-than operator (<) as the predicate.   
        - 이 메서드와 관련된 'sorted()' 메서드를 호출하는 것은 이 메서드(sorted(by))를 호출하고 < 연산자를 술어로 전달하는 것과 동일한 결과를 보여준다.        
    
# Type
## 형변환
- Int(value) -> Int?     
    - 값이 형변환이 안 되는 경우 nil 반환     
    - 형변환을 확신하는 경우에는 강제 언래핑 !      
- String(IntValue) -> String     
- String(ReversedCollection&lt;Substring&gt;) -> String    
- String(ReversedCollection&lt;String&gt;) -> String     
    
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
    
### 문자열 역순으로 만들기     
- String.reversed() -> ReversedCollection&lt;String&gt;      
    - 문자열을 역순으로 변환     
    - 반환 타입이 ReversedCollection&lt;String&gt; 이므로 String으로 타입 캐스팅하여 사용    
    
## Int     
### 짝수 판별     
- Int.isMultiple(of: IntValue) -> Bool      
    - isMultiple 메서드의 인자 값의 배수인지 판별     
    - Int 값이 인자의 배수일 경우 True, 아니면 False     
    - %와의 비교       
        - 공통점: 둘 다 배수인지 판별할 때 사용가능      
        - 차이점: value % 0 == 0-> 무조건 True -> 0을 예외처리 해줘야함     
                0.isMultiple(of: 0) -> True      
                1.isMultiple(of: 0) -> False       
      
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
        
### 반복문 종료       
- break      
    - 반복문 내부에서 break 코드를 반복문을 탈출한다.      
       
      
## Condition 
### 삼항연산자 
- Condition ? True Output : False Output            
    - 조건 ? 참일 경우 값 : 틀릴 경우 값       
    - print(Condition ? True Output : False Output)으로 많이 사용      


# Function
### 함수의 인자로 온 전역변수의 값 변경      
- func functionName(a: inout Type) { } , functionName(a: &argument)      
    - parameter에 inout 키워드를 사용하여 전역변수의 값 참조     
    - 함수 호출시 인자 옆에 & 키워드 사용       

### 작은 값 반환      
- min(Comparable, Comparable) -> Comparable     
    - 두 값 중 작은 값을 반환하는 함수     
    - Protocol 'Comparable' as a type cannot conform to the protocol itself   
    - Comparable 프로토콜을 준수하는 인자를 사용한다.     
    - 기본 타입은 Comparable 프로토콜을 준수한다. (Int, Double, String...)      
    
