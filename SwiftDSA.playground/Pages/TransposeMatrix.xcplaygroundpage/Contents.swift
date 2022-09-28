//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func trnaposeMatrix(list :  [[Int]]) -> [[Int]] {
    print(list)
   // var tMatrix =
   var resultArray  = [[Int]](repeating: [Int](repeating: 0, count: list.count), count: list[0].count)
    for i in 0..<list.count {
        for j in 0..<list[i].count {
            resultArray[j][i] = list[i][j]
        }
    }
    print(resultArray)
    return resultArray
}
trnaposeMatrix(list : [[1,2,3],[4,5,6]])
