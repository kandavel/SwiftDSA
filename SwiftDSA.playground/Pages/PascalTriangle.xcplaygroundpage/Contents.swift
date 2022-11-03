//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func pascalTrianlge(_ numRows: Int) -> [[Int]] {
    var matrix = Array(repeating: Array(repeating: 0, count: numRows), count: numRows)
    print(matrix)
    for i in 0..<numRows {
        matrix[i][0] = 1
        for j in 1..<numRows where i > 0 {
            matrix[i][j] = matrix[i-1][j] + matrix[i-1][j-1]
        }
        print("\nFor the ithRow ::\(i)\(matrix)\n")
        
    }
    return matrix.compactMap{ $0.filter { $0 > 0 }}
}
pascalTrianlge(5)


func secondsToMinutesSeconds (seconds : Int64) -> String {
    let s: Int = Int(seconds) % 60
    let m: Int = Int(seconds) / 60
    let formattedDuration = String(format: "%02d:%02d", m, s)
    return formattedDuration
}
secondsToMinutesSeconds(seconds : 3600)
