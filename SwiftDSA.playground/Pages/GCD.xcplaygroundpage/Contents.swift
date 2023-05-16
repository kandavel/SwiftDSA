//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 func findGCD(_ nums: [Int]) -> Int {
 var minimum = nums.min()!
 var maximum = nums.max()!
 var divisor = min(minimum, maximum)
 
 while divisor > 0 {
 if minimum % divisor == 0 && maximum % divisor == 0 {
 return divisor
 }
 divisor -= 1
 }
 return 1
 }
 findGCD([2,5,6,14])*/
func lengthOfLongestSubstring(_ s: String) -> Int {
    
    var characterDict = [Character:Int]()
    var maxLength = 0
    var lastRepeatPos = -1
    var i = 0
    
    for (idx,c) in s.enumerated() {
        if (characterDict[c] != nil) && (characterDict[c]! > lastRepeatPos) {
            lastRepeatPos = characterDict[c]!
        }
        
        maxLength = max(i - lastRepeatPos, maxLength)
        print("maxLenght :: \(maxLength)\n")
        print("lastRepeatPos :: \(lastRepeatPos)\n")
        print("i POsition :: \(i)\n")
        characterDict[c] = i
        i += 1
        print("LastRepeatingPostion :: \(lastRepeatPos)\n")
        print("Dictionary :: \(characterDict)\n")
        print("Dictionary :: \(characterDict[c])\n")
    }
    
    return maxLength
}
lengthOfLongestSubstring("abc")
