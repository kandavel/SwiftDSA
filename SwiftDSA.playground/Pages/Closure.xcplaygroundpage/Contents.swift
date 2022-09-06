//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func makeRandomNumberGenerator() -> () -> Int {
    var previousNumber = 0
    return {
        var newNumber: Int = 0
        print("1 Closure way of storing num \(previousNumber)")
        
        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        print("2 Closure way of storing num \(previousNumber)")
        return newNumber
    }
}

let generator = makeRandomNumberGenerator()
for _ in 1...10 {
    print(generator())
}
