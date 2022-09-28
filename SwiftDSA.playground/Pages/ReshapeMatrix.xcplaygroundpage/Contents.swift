//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func reshapeMatrix(grid : [[Int]],row : Int,column : Int) -> [[Int]] {
    var resultArray = grid
    var reshapeRow = 0
    var reshapeColumn = 0
    for (i,list) in grid.enumerated() {
        reshapeColumn = 0
        for j in 0..<grid[i].count {
            if reshapeColumn >= column - 1 {
                reshapeRow = reshapeRow + 1
            }
            print("\n index \(i) index \(j) :: \(grid[i][j])")
            print("\nPrinting Reshaping Row :: \(reshapeRow)\n")
            print("\nPrinting Reshaping Column :: \(reshapeColumn)\n")
            print("\n index for result \(reshapeRow) index \(reshapeColumn) :: \(resultArray[reshapeRow][reshapeColumn])")
            resultArray[reshapeRow][reshapeColumn]
            reshapeColumn = reshapeColumn + 1
        }
    }
    return resultArray
}
reshapeMatrix(grid: [[1,2],[3,4]], row: 1, column: 4)
