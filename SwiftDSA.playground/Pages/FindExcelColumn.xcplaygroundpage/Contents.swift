//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func findExcelColumn(string : String) -> Int {
    var result :Int  = 0
    for eachChar in string {
        let startCode = Character("A").asciiValue! - 1 //A ->65 ,make sure difference is always one, to show column 1 for A
        let charCode = eachChar.asciiValue!
        let difference =  Int(charCode - startCode)
        let d  = Int(UInt8(difference))
        result  = result * 26 + d
    }
  return result
}

findExcelColumn(string : "A")
