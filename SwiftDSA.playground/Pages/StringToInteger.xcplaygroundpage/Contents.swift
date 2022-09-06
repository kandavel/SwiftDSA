//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func myAtoi(_ str: String) -> Int {
        // Skip leading spaces
        var index = 0
        for c in str {
            guard c == " " else { break }
            index += 1
        }
        
        guard index < str.count else { return 0 }
        
        // Define sign
        let isPositive: Bool
        let sign = str[String.Index(encodedOffset: index)]
        switch sign {
        case "-":
            isPositive = false
            index += 1
        case "+":
            isPositive = true
            index += 1
        default:
            isPositive = true
        }
        
        // Convert string to digits
        var digits = [Int]()
        while index < str.count {
            guard let digit = charToDigit(str: str[String.Index(encodedOffset: index)]) else { break } // non digit character occured
            digits.append(digit)
            index += 1
        }
        
        // Validate amount of detected digits
        guard !digits.isEmpty else { return 0 }
        
        // Convert digits to number
        var number = 0
        for digit in digits {
            if number > (Int32.max - Int32(digit)) / 10  {
                return isPositive ? Int(Int32.max) : Int(Int32.min)
            }
            number = number * 10 + digit
        }
        
        return isPositive ? number : -number
    }
    
    private func charToDigit(str: Character) -> Int? {
        switch str {
        case "0": return 0
        case "1": return 1
        case "2": return 2
        case "3": return 3
        case "4": return 4
        case "5": return 5
        case "6": return 6
        case "7": return 7
        case "8": return 8
        case "9": return 9
        default: return nil
        }
    }

