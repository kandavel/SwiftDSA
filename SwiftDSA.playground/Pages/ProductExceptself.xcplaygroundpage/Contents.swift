//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func productExceptSelf(_ nums: [Int]) -> [Int] {
       guard nums.count > 0 else { return [] }
    
    var resultArray: [Int] = [Int](repeating: 0, count: nums.count)
 
    var prefix: Int = 1
    var postfix: Int = 1

    for index in 0..<nums.count {
        resultArray[index] = prefix
        print("\n Forward For index \(resultArray[index])\n")
        print(resultArray[index])
        prefix = nums[index] * prefix
        print("\n  Forward For index prefix \(prefix)\n")
        print(prefix)
    }
    
    print(resultArray)
    
    for index in (0..<nums.count).reversed() {
        print("\nreverse Index :: \(index)\n")
        print( "\nReverse index \(index) array Value  is :: \(postfix * resultArray[index])\n")
        resultArray[index] = postfix * resultArray[index]
        print("\n Backward For index \(resultArray[index])\n")
        print(resultArray[index])
        print("\n\n\(nums[index]) \n\n\n")
        print( "\nReverse index \(index) postfix Value  is :: \(postfix * nums[index])\n")
        postfix = postfix * nums[index]
        print("\n  Backward For index prefix \(postfix)\n")
        print(postfix)
    }
    print(resultArray)
    return resultArray
    }
let array  =  [4,1,2,4]
productExceptSelf(array)
