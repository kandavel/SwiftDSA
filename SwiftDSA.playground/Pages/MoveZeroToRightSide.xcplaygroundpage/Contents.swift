//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func moveZeroToTheRightSide(nums : [Int]) {
    var array  = nums
    for i in 0..<array.count {
        for j in i+1..<array.count {
            if array[i] == 0  {
                array.swapAt(j, i)
            }
        }
    }
    print(array)
}
moveZeroToTheRightSide(nums : [0,1,0,3,12])
