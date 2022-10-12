//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func find3Sum(list : [Int],sum : Int) -> [Int] {
    var array = list.sorted()
    var lower = 0
    var middle  = 0
    var higher  = 0
    for i in 0..<array.count - 2 {
        print("i value  in \(i)")
        lower = i
        middle = lower + 1
        higher  = array.count - 1
        while middle < higher {
            print("---------3sum-------")
            print(array[lower])
            print(array[middle])
            print(array[higher])
            print("---------3sum-------")
            if array[lower] +  array[middle] + array[higher] == sum {
                print([lower,middle,higher])
                [array[lower], array[middle],array[higher]]
                return  [array[lower], array[middle],array[higher]]
            }
            if array[lower] +  array[middle] + array[higher] < sum {
                middle  = middle + 1
            }
            else {
                higher = higher - 1
            }
        }
    }
    return []
}
find3Sum(list : [1, 4, 45, 6, 10, 8],sum : 22)
