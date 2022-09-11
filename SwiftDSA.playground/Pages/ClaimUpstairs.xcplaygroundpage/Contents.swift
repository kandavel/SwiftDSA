//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func climbStairs(_ n: Int) -> Int {
    var num1 = 1, num2 = 1, minimumStep = 2
    while minimumStep <= n {
        let result = num1 + num2
        num1 = num2
        num2 = result
        print("PossibleWay :: \(result)\n")
        minimumStep = minimumStep +  1
    }
    return num1
}
climbStairs(4)
