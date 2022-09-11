//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func maximumProfitInShare(pricesList  : [Int]) -> Int {
    var minprice  = pricesList[0]
    var result  = 0
    defer {
        findTheIndexPath(array : pricesList, minPrice : minprice,maxPrice : result)
    }
    for i in 1..<pricesList.count {
        minprice  = min(minprice, pricesList[i])
        print(minprice)
        result = max(result, pricesList[i] - minprice)
        print(result)
    }
    return result
}

func findTheIndexPath(array : [Int], minPrice : Int,maxPrice : Int) {
    print(array)
    print(minPrice)
    print(maxPrice)
    let buyMinimumindex  =  array.index(of: minPrice)
    let sellMaximumindex  =  array.index(of: minPrice + maxPrice)
    
    print("Buy at :: \(buyMinimumindex) -> and Maximum Profit at \(sellMaximumindex)")
}

maximumProfitInShare(pricesList : [7,1,5,3,6,4])
//[7,1,5,3,6,4]
