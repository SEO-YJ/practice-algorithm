//
//  main.swift
//  algorithmTest
//
//  Created by 서유준 on 2023/01/24.
//

import Foundation
//MARK: solved.ac
//MARK: Class 1

//MARK: 1008
//let aArr = readLine()!.split(separator: " ").map{ Double($0)! }
//print(aArr[0]/aArr[1])

//MARK: 1330
//let aArr = readLine()!.components(separatedBy: " ")
//
//if aArr[0] > aArr[1] {
//    print(">")
//} else if aArr[0] < aArr[1] {
//    print("<")
//} else {
//    print("==")
//}

//MARK: 2438
//let aInt = Int(readLine()!)!
//let aArr = Array(1...aInt)
//aArr.forEach {
//    print(String(repeating: "*", count: $0))
//}

//MARK: 2562
//var arr: [Int] = []
//for _ in 1...9 {
//    arr.append(Int(readLine()!)!)
//}
//print(arr.max()!)
//print(arr.firstIndex(of: arr.max()!)! + 1)

//MARK: 2675
//let count = Int(readLine()!)!
//
//for _ in 1...count {
//    let aArr = readLine()!.components(separatedBy: " ")
//    let aCha = aArr[1].map{$0}
//    aCha.forEach{
//        print(String(repeating: $0, count: Int(aArr[0])!), terminator: "")
//    }
//    print()
//}

//MARK: 8958
//let count = Int(readLine()!)!
//var score = [Int]([0])
//
//for _ in 1...count {
//    let arr = readLine()!.map{ $0 }
//    for (index, value) in arr.enumerated() {
//        if value == "O" && score[index] == 0 {
//            score.append(1)
//        } else if value == "O" && score[index] != 0 {
//            score.append(score[index] + 1)
//        } else {
//            score.append(0)
//        }
//    }
//    print(score.reduce(0, +))
//    score.removeAll()
//    score.append(0)
//}

//let count = Int(readLine()!)!
//
//for _ in 1...count {
//    var score = [Int]([0])
//    let input = readLine()!.map{ $0 }
//
//    for (index, value) in input.enumerated() {
//        if value == "O" {
//            if score[index] > 0 {
//                score.append(score[index] + 1)
//            } else {
//                score.append(1)
//            }
//        } else {
//            score.append(0)
//        }
//    }
//    print(score.reduce(0){$0 + $1})
//}

//MARK: 10818
//let count = Int(readLine()!)!
//let aArr = readLine()!.components(separatedBy: " ").map { Int($0)! }
//print(aArr.min()!, aArr.max()!)

//MARK: 10951
//while let input = readLine() {
//    print(input.split(separator: " ").map{ Int($0)! }.reduce(0){ $0 + $1 })
//}

//MARK: 11654
//print(Character(readLine()!).asciiValue)

//MARK: 11720
// 코드 1
//print(readLine()!.map{ Int(String($0))! }.reduce(0, +))

// 코드2
//let input = readLine()!
//var sum = 0
//
//for i in input {
//    sum = sum + Int(String(i))!
//}
//
//print(sum)

//MARK: 1157
// 내 해결
//var inputArr = readLine()!.uppercased().map{String($0)}
//var input = inputArr.sorted(by: <)
//
//var score = [Int]()
//var arr = [String]()
//var scoreNum = 0
//
//score.append(1)
//arr.append(input[0])
//
//if input.count > 1 {
//for n in 1...input.count-1 {
//    if arr[n-1] == input[n] {
//        score[scoreNum] += 1
//        arr.append(input[n])
//    } else {
//        scoreNum += 1
//        score.append(1)
//        arr.append(input[n])
//    }
//}
//}
//
//var max = 0
//var equal = 0
//var answer = ""
//var count = 0
//
//for n in score {
//    count += n
//    if max < n {
//        equal = 0
//        max = n
//        answer = input[count-1]
//    } else if max == n {
//        equal = n
//        }
//    }
//
//
//if equal == 0 {
//    print(answer)
//} else {
//    print("?")
//}


// 내 해결 새로운 문법
//1. uppercased()
//2. sorted(by: )

// 참조하고 해결한 코드
//let input = readLine()!.uppercased()
//var dict = [String: Int]()
//
//input.forEach {
//    if dict[String($0)] == nil {
//        dict[String($0)] = 1
//    } else {
//        dict[String($0)] = dict[String($0)]! + 1
//    }
//}
//
//var output = ""
//
//dict.forEach {
//    if $1 == dict.values.max() {
//        output += $0
//    }
//}
//
//print(output.count > 1 ? "?" : output)

//MARK: 2439
// 내 해결
//let input = Int(readLine()!)!
//for n in 1...input {
//for i in 1...input {
//    print(input > i+n-1 ? " " : "*", terminator: "")
//}
//    print()
//}
//
// stride 사용하여 풀기
//for n in 1...input {
//    for _ in stride(from: input, to: n, by: -1) {
//        print(" ", terminator: "")
//    }
//    for _ in stride(from: 0, to: n, by: +1) {
//        print("*", terminator: "")
//    }
//    print()
//}


//MARK: 2577
//var sum = 1
//var count = 0
//
//while let input = readLine() {
//    sum *= Int(input)!
//    count += 1
//    if count == 3 {
//        break
//    }
//}
//
//let arr = String(sum).map{ Int(String($0))! }
//
//var dict = [Int: Int]()
//arr.forEach {
//    dict[$0] = dict[$0] == nil ? 1 : dict[$0]! + 1
//}
//
//
//for i in stride(from: 0, to: 10, by: +1) {
//    print(dict[i] == nil ? "0" : dict[i]!)
//}

//MARK: 2908
// 내 해결
//let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//
//var aArr = String(input[0]).map{ Int(String($0))! }
//var bArr = String(input[1]).map{ Int(String($0))! }
//
//func swap(arr: inout [Int]) {
//    var num = 0
//
//    num = arr[0]
//    arr[0] = arr[2]
//    arr[2] = num
//}
//swap(arr: &aArr)
//swap(arr: &bArr)
//
//func compareArray(arr1: [Int], arr2: [Int]) {
//    let num1 = arr1[0]*100 + arr1[1]*10 + arr1[2]
//    let num2 = arr2[0]*100 + arr2[1]*10 + arr2[2]
//
//    print(num1 > num2 ? num1 : num2)
//}
//
//compareArray(arr1: aArr, arr2: bArr)

// 참조하고 해결한 코드
//print(readLine()!.split(separator: " ").map{ Int(String($0.reversed()))! }.max()!)

//MARK: 10809
//let input = readLine()!.map{Int(String($0.asciiValue!))!}
//
//var answer = [Int](repeating: -1, count: 26)
//
//for (index, value) in input.enumerated() {
//    for n in 97...122 {
//        if value == n && answer[n-97] == -1 {
//            answer[n-97] = index
//            break
//            }
//        }
//    }
//
//
//print(answer.map { "\($0)" }.joined(separator: " "))

//MARK: 1018
//let inputNum = readLine()!.split(separator: " ").map{ Int(String($0))! }
//// y개수, x개수 입력 받음
//
//var inputBoard = [[String]]()
//inputBoard.append(Array(repeating: ".", count: inputNum[1] + 1))
//// [., ., ., ., ., ...] 삽입
//
//for _ in 1...inputNum[0] {
//    inputBoard.append(["."] + readLine()!.map{String($0)})
//    }
//
//// [1, 1] 부터 시작
//
//var resultInt: [Int] = [Int]()
//
//
//func chessBoardChangeCount(startX: Int, startY: Int, board: [[String]]) -> Int {
//var countResultWB = 0
//var countResultBW = 0
//
//for countY in 0...7 {
//    for countX in 0...7 {
//        if (countY + countX).isMultiple(of: 2) {
//            if board[countY + startY][countX + startX] == "B" {
//                countResultWB += 1
//            }
//        } else {
//            if board[countY + startY][countX + startX] == "W" {
//                countResultWB += 1
//            }
//        }
//    }
//}
//
//for countY in 0...7 {
//    for countX in 0...7 {
//        if (countY + countX).isMultiple(of: 2) {
//            if board[countY + startY][countX + startX] == "W" {
//                countResultBW += 1
//            }
//        } else {
//            if board[countY + startY][countX + startX] == "B" {
//                countResultBW += 1
//            }
//        }
//    }
//}
//
//    return min(countResultWB, countResultBW)
//}
//
//for y in 1...(inputNum[0] - 8 + 1) {
//    for x in 1...(inputNum[1] - 8 + 1) {
//        resultInt.append(chessBoardChangeCount(startX: x, startY: y, board: inputBoard))
//    }
//}
//
//print(resultInt.min()!)
//


