//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func threeSum(_ nums: [Int]) -> [[Int]] {
       var result: Set<[Int]> = []
       
       var dict: [Int: Int] = [:]
       for i in 0..<nums.count {
           dict[nums[i], default: 0] += 1
           print(dict)
       }
       print("After the for Loop Completion \(dict))")
       /*
       -1: 1
        0: 0
        1: 0
        2: 1
       -4: 1
       */

       for i in 0..<nums.count { // O(n)
          // dict[nums[i]]! -= 1
           print("First InnerLoop Completion \(dict)")
           for j in i+1..<nums.count { // O(n)
              // dict[nums[j]]! -= 1
               print("Second InnerLoop Completion \(dict)")
               let lastNumber = 0 - nums[i] - nums[j]
               print("\nLastNumber value\(lastNumber)\n")
               print("Count \(dict[lastNumber])")
               if let count = dict[lastNumber], count > 0 {
                   result.insert([nums[i], nums[j], lastNumber].sorted()) // sorting 3 elements is O(1)
                   print("\nindex i :: \(i)\n")
                   print("\nindex j :: \(j)\n")
                   print("\nuniqueElement \(result)\n")
               }
           }
           for j in i..<nums.count { // O(n)
              // dict[nums[j]]! += 1
           }
           // dict[nums[i]]! += 1 // don't increment back the first number because we don't need it anymore
       }
       
       // Total O(n * 2n) = O(n^2)
       
       return Array(result)
   }


let array  =  [4,-1,0,1,2,-1,-4]
threeSum(array)
