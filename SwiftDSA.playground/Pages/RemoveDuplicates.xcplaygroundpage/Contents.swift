//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func removeDuplicates(_ nums: inout [Int]) -> Int {
    var map: [Int: Int] = [ : ], index = 0
    while index < nums.count {
        print("Array index is::: \(index)")
        let num = nums[index]
        if let idx = map[num] {
            nums.remove(at: index)
        } else {
            map[num] = index
            index += 1
        }
    }
    return index
}
var array  = [1,1,2,2,3,4,5]
removeDuplicates(&array)
