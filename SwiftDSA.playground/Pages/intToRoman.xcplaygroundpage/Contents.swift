//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let romanDictionary  = [1000: "M",
500: "D",
100: "C",
50: "L",
10: "X",
5: "V",
1: "I",
4: "IV",
9: "IX",
40: "XL",
90: "XC",
400: "CD",
900: "CM"
]

func intToRoman(num : Int) -> String {
    var romanString = ""
    var input  = num
    let sortedKey  = romanDictionary.keys.sorted(by: {$0 > $1})
    print(sortedKey)
    while input > 0 {
        for (k) in sortedKey where input - k >= 0 {
            input = input - k
            romanString = romanString + (romanDictionary[k] ?? "")
            print(romanString)
            print(input)
            //
        }
    }
    return romanString
}
print(intToRoman(num : 11))
