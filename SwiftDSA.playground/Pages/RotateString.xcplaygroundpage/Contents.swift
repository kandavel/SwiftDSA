//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func rotateString(_ source: String, _ goal: String) -> Bool {
          let source = goal
          var array = Array(source)
          var counter =  source.count
      while String(array) != goal,counter > 0 {
          let firstElement = array.removeFirst()
          print(firstElement)
          array.append(firstElement)
          counter = counter - 1
          if String(array) == goal { return true }
      }
      return false
}
rotateString("abcde","abced")
