//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func findMissingRanges(nums: [Int],lower: Int,upper: Int) -> [String] {
    var array = nums
    var rangeStringList  : [String] = []
    if !(array.isEmpty) {
        let count  =  array.count - 1
        for i in 0 ..< count {
            let currentValue  =  array[i]
            let nextValue  = array[i + 1]
            let diff  = nextValue - currentValue
            if diff > 1 {
                let currentUpdatedValue = currentValue + 1
                let nextUpdatedValue =  nextValue - 1
                print("MinimumRange :: \(currentUpdatedValue) -> MaximumRange :: \(nextUpdatedValue)")
                if currentUpdatedValue ==  nextUpdatedValue {
                    rangeStringList.append("\(currentUpdatedValue)")
                }
                else {
                    rangeStringList.append("\(currentUpdatedValue)->\(nextUpdatedValue)")
                }
                
            }
        }
        
        if upper != array[count]     {
            rangeStringList.append("\(array[count]  + 1)->\(upper)")
        }
    }
    else {
        if lower == upper &&  upper > 0 && lower > 0 {
            rangeStringList.append("\(lower)")
        }
        else {
            rangeStringList.append("\(lower)->\(upper)")
        }
    }
    return  rangeStringList
}
findMissingRanges(nums: [], lower: -2, upper: -1)
