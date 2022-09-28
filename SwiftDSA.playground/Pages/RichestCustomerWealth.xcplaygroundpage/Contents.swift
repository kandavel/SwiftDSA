//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func findTheRichestCustomerWealth(list : [[Int]]) -> Int {
    var maxWealth  = 0
    for i in 0..<list.count {
        var wealth  = 0
        for j in 0..<list[i].count {
            wealth = wealth + list[i][j]
        }
        maxWealth  = max(maxWealth,wealth)
    }
    print(maxWealth)
    return maxWealth
}
findTheRichestCustomerWealth(list : [[1,5],[7,3],[3,5]])
