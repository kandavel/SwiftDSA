//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func removeDuplicateFromTheArray(array :  [Int]) {
    var finalArray : [Int] = array
    var dicationary : [Int : Int] = [:]
    var startindex  =  0
    let endIndex  = array.count
    while startindex < endIndex {
        let num  = array[startindex]
        if  let index  = dicationary[num] {
            finalArray.remove(at: index)
        }
        else {
            dicationary[num] = startindex
        }
        startindex = startindex + 1
    }
    print(finalArray)
}
removeDuplicateFromTheArray(array: [2,1,1,4,4,5,6,2])
