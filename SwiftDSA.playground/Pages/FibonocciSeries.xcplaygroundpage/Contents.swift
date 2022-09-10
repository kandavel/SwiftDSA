//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func enterTheFibonocciSeriesNumber(number : Int) -> [Int] {
    var num1: Int = 0
    var num2: Int = 1
    var currentCount  = 0
    var fibnocciArray : [Int] = []
    
    for _ in 0..<number {
        let result  = num1 + num2
        fibnocciArray.append(num1)
        num1 = num2
        num2  = result
        currentCount = currentCount + 1
    }
    return fibnocciArray
}
enterTheFibonocciSeriesNumber(number: 10)
