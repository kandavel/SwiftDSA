//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func findTheMajorityElement(nums :  [Int]) -> Int {
    var hashmap : [Int : Int] = [:]
    for eachelement in nums {
        if let valueExists =  hashmap[eachelement] {
            hashmap[eachelement] =  valueExists + 1
        }
        else {
            hashmap[eachelement] =  1
        }
    }
    let maximumOccurance =  hashmap.map({$0.1}).sorted().last ?? 0
    let majorityNum = hashmap.first(where: {$0.1 == maximumOccurance})!.key
    return majorityNum
}
findTheMajorityElement(nums : [2,2,1,1,1,2,2])
