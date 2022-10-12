//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//wekaest Rows in a matrixx
func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
    var array   = mat
    var countList :  [Int] = []
    var dictionary : [Int : Int] = [:]
    for i in 0..<mat.count {
        var count = 0
        for j in 0..<array[i].count {
           // print(array[i][j])
            count  = count + array[i][j]
        }
        dictionary[i] =  count
    }
    //iterate dictionary
    for (_,value) in dictionary {
        countList.append(value)
    }
    print(countList)
    var sortedList : [Int] = []
    sortedList = Array(countList.enumerated().sorted(by: order).map{$0.0}[0..<k])
    return sortedList
}

func order(_ l: (offset: Int, element: Int), _ r: (offset: Int, element: Int)) -> Bool {
        print("\noffset\n")
         print(l.offset)
         print(r.offset)
        print("\nelement\n")
        print(l.element)
        print(r.element)
       print("\n\nCondition Mathces  :: \(l.element == r.element && l.offset < r.offset || l.element < r.element)\n")
       return l.element == r.element && l.offset < r.offset || l.element < r.element
}

kWeakestRows([[1,1,0,0,0],
              [1,1,1,1,0],
              [1,0,0,0,0],
              [1,1,0,0,0],
              [1,1,1,1,1]], 3)
