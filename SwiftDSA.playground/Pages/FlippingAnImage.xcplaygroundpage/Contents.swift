//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
    var array  = image
    for i in 0..<array.count {
        var leftSide = 0
        var rightSide  = array[i].count - 1
        while leftSide < rightSide {
            array[i].swapAt(leftSide, rightSide)
            leftSide = leftSide + 1
            rightSide  = rightSide - 1
        }
        print(array[i])
        for j in 0..<array[i].count {
            array[i][j] =  array[i][j] == 1 ? 0 : 1
        }
    }
    print(array)
    return array
}
flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]])
