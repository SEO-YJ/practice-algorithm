//
//  main.swift
//  algorithmTest
//
//  Created by 서유준 on 2023/01/24.
//

import Foundation

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
