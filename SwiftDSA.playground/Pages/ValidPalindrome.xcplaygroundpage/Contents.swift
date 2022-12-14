//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func validpalindrome(input : String) -> Bool {
    var leftPointer  : Int  =  0
    var rightPointer  : Int  =  input.count  - 1
    var resultantString  = input.replacingOccurrences(of: " ", with: "").lowercased()
    let okayChars = Set("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890")
    resultantString  = String(resultantString.filter {okayChars.contains($0)})
    print(resultantString)
    var stringList  = Array(resultantString)
    var resultantStringListCount  = stringList
     rightPointer    =  resultantString.count - 1
    while leftPointer < rightPointer {
        if stringList[leftPointer] == stringList[rightPointer] {
            leftPointer = leftPointer + 1
            rightPointer  = rightPointer - 1
        }
        else {
            return false
        }
    }
    
 return true
}
validpalindrome(input : "A man, a plan, a canal: Panama")
