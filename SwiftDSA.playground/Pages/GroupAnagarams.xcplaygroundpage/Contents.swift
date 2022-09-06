//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [[Character]:[String]] = [:]
        for c in strs {
            let abc = c.sorted()
            dict[abc] == nil ? (dict[abc] = [c]) : (dict[abc]?.append(c))
        }
        return dict.map({$1})
}
