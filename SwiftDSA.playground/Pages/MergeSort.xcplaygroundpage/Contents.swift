//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func merge(_ arr: inout [Int], _ l: Int, _ m: Int, _ r: Int) {
    let n1 = m - l + 1
    let n2 = r - m
    
    print("m value is :: \(m)\n")
    print("r value is :: \(r)\n")
    print("N1 values is :: \(n1)\n")
    print("N2 values is :: \(n2)\n")
    
    var L = [Int](repeating: 0, count: n1)
    var R = [Int](repeating: 0, count: n2)
    for i in 0..<n1 {
        L[i] = arr[l + i]
        print("LowerBound :: \(L[i]) ")
    }
    for j in 0..<n2 {
        R[j] = arr[m + 1 + j]
        print("HigherBound :: \(R[j]) ")
    }
    var i = 0
    var j = 0
    var k = l
    while i < n1 && j < n2 {
        if L[i] <= R[j] {
            arr[k] = L[i]
            i += 1
        } else {
            arr[k] = R[j]
            j += 1
        }
        k += 1
    }
    while i < n1 {
        arr[k] = L[i]
        i += 1
        k += 1
    }
    while j < n2 {
        arr[k] = R[j]
        j += 1
        k += 1
    }
}

func mergeSort(_ arr: inout [Int], _ l: Int, _ r: Int) {
    if l < r {
        let m = l + (r - l) / 2
        print("Low,Midle,Right\n")
        print(l)
        print(m)
        print(r)
        print("Low,Midle,Right\n")
        mergeSort(&arr, l, m)
        mergeSort(&arr, m + 1, r)
        merge(&arr, l, m, r)
    }
}

func printArray(_ arr: [Int]) {
    for element in arr {
        print("\(element) ", terminator: "")
    }
    print()
}

let arr = [12, 11, 13, 5, 6, 7]
var mutableArr = arr
let arrSize = arr.count

print("Given array is")
printArray(mutableArr)

mergeSort(&mutableArr, 0, arrSize - 1)

print("\nSorted array is")
printArray(mutableArr)
