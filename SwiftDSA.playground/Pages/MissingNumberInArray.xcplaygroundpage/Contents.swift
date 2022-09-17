//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func findDiappearedNumberInArray(_ list : [Int]) -> [Int] {
    var hashMap : [Int : Int] = [:]
    for eachNumber in list {
        if let numberExist  =  hashMap [eachNumber] {
            hashMap [eachNumber] = numberExist + 1
        }
        else {
            hashMap [eachNumber] = 1
        }
    }
    print(hashMap)
    var missingArray : [Int] = []
    for i in 0..<list.count {
            if hashMap[i+1] == nil {
                missingArray.append(i+1)
            }
        }
    return  missingArray
}
findDiappearedNumberInArray([4,3,2,7,8,2,3,1])

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var _nums = nums
    var i = 0
    while i < nums.count {
        let pos = _nums[i] - 1
        if _nums[pos] != _nums[i] {
            let temp = _nums[pos]
            _nums[pos] = _nums[i]
            _nums[i] = temp
        }
        else {
            i += 1
        }
    }
    print(_nums)
    var miss: [Int] = []
    for (index, value) in _nums.enumerated() {
        if index != value - 1 {
            miss.append(index + 1)
        }
    }
    return miss
}

