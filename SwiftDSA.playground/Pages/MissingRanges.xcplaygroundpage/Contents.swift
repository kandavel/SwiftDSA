//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func missingRangesInArray(array : [Int]) -> [String] {
    var rangeStringList  : [String] = []
    let count  =  array.count - 1
    for i in 0 ..< count {
        let currentValue  =  array[i]
        let nextValue  = array[i + 1]
        let diff  = nextValue - currentValue
        if diff > 1 {
            print("MinimumRange :: \(currentValue + 1) --> MaximumRange :: \(nextValue - 1)")
            rangeStringList.append("\(currentValue + 1)-->\(nextValue - 1)")
        }
    }
    return  rangeStringList
}
missingRangesInArray(array :  [0,1,3,50,75])
