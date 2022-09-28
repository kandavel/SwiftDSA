//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func islandPerimeter(_ grid: [[Int]]) -> Int {
    var count  = 0
    var intersected = 0
    //find out the occurances of one
    for (i,list) in grid.enumerated() {
        for j in 0..<grid[i].count {
            if grid[i][j] ==  1 {
                count  = count + 1
            }
            if (i != 0 && j != 0) {
                //for leftside
                if grid[i - 1][j] == 1 {
                    intersected  = intersected + 1
                }
                else if grid[i] [j - 1] ==  1 {
                    intersected  = intersected + 1
                }
            }
        }
    }
   let result  =  4*count - 2*intersected
    return result
}
//[[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
islandPerimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]])
