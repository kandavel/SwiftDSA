//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func search(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    let isTargetInLeftPart = nums[0] <= target
    let firstElement = nums[0]
    
    while left <= right {
        let mid = left + (right - left)/2
        let midElement = nums[mid]
        
        if midElement == target {
            return mid
        }
        if isTargetInLeftPart {
            if firstElement > midElement || target < midElement {
                right = mid - 1
            } else {
                left = mid + 1
            }
        } else {
            if firstElement <= midElement || target > midElement {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
    }
    return -1
}
search([4,5,6,7,0,1,2], 0)
search([4,5,6,7,0,1,2], 3)
