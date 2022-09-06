//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


let sumArray  = [3,5,1,4,8]
let target  = 9

//find the sum of  two elemets that mathces the target

func findsumOftwoNumbers(list : [Int]) ->  [Int] {
    var dictionary  : [Int : Int] = [:]
    var array  : [Int] = []
    for (i,eachNumber) in array.enumerated() {
        dictionary[eachNumber] =  i
    }
    for (index,eachNumber) in array.enumerated() {
        let targetPairNum  =  target - eachNumber
        if dictionary.keys.contains(targetPairNum) {
            if let anotherIndex = dictionary[targetPairNum] {
                    return [anotherIndex, index]
            }
        }
    }
    return array
}


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        //First store the array values in dictionary
        var dictionary : [Int : Int] = [:]
        for (index,value) in nums.enumerated() {
            dictionary[value] =  index
        }
        //Iterate the each element in the array, subtract from the target, check the resultant value is present in the  array
         for (currentIndex,value) in nums.enumerated() {
             let remaingValue = target - value
             if dictionary.keys.contains(remaingValue){
                 if let targetIndex = dictionary[remaingValue]{
                     return [targetIndex,currentIndex]
                 }
             }
         }
        return []
}
