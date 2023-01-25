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
var arr: [Int] = []
for _ in 1...9 {
    arr.append(Int(readLine()!)!)
}
print(arr.max()!)
print(arr.firstIndex(of: arr.max()!)! + 1)



