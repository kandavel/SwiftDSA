//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func mostCommonWord(paragrapgh : String, bannedWordList  : [String]) -> String {
    let paragraphList  = paragrapgh.lowercased().split{ !$0.isLetter }
    print(paragrapgh.lowercased())
    print(paragraphList)
    var exculdeBannedList : [String] = []
    var hashMap : [String : Int] = [:]
    var maxOcuurence  =  0
    var result  = ""
    for eachWord in paragraphList {
        if  !(bannedWordList.contains("\(eachWord)")) {
            exculdeBannedList.append("\(eachWord)")
        }
    }
    
    for eachword in exculdeBannedList {
        if let count  = hashMap[eachword] {
            hashMap[eachword]  = count + 1
        }
        else {
            hashMap[eachword]  = 1
        }
        if let count =  hashMap[eachword], count > maxOcuurence {
            maxOcuurence =  count
            result  = eachword
        }
    }
    return result
}
mostCommonWord(paragrapgh: "Bob hit a ball,b the hit BALL flew far after it was hit. )*E!Q(E()QE*)Q&E&QR)Q", bannedWordList: ["hit"])
