//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class LinkedNode<T> {
    var next: LinkedNode<T>?
    var value: T
    
    init(next: LinkedNode<T>?, value: T) {
        self.next = next
        self.value = value
    }
    
    func printList() {
        var currentNode = self
        print(value)
        while currentNode.next != nil {
            print("Current NodeValue ::\(currentNode.value)")
            currentNode = currentNode.next!
            print("1Current NodeValue ::\(currentNode.value)")
        }
    }
    
}


let linkedNode5 = LinkedNode(next: nil, value: 5)
let linkedNode4 = LinkedNode(next: linkedNode5, value: 3)
let linkedNode3 = LinkedNode(next: linkedNode4, value: 2)
let linkedNode2 = LinkedNode(next: linkedNode3, value: 2)
let linkedListRoot = LinkedNode(next: linkedNode2, value: 1)
linkedListRoot.printList()

let linkedNode7 = LinkedNode(next: nil, value: 10)
let linkedNode6 = LinkedNode(next: linkedNode7, value: 9)
let linkedNode55 = LinkedNode(next: linkedNode6, value: 8)
let linkedNode44 = LinkedNode(next: linkedNode55, value: 6)
let linkedNode33 = LinkedNode(next: linkedNode44, value: 4)
let linkedNode22 = LinkedNode(next: linkedNode33, value: 3)
let linkedListRoot2 = LinkedNode(next: linkedNode22, value: 1)


func mergeLinkedLists(listOne: LinkedNode<Int>?, listTwo: LinkedNode<Int>?) {
    var list1 = listOne
    var list2 = listTwo
    let resultNodeHead = LinkedNode(next: nil, value: 0)
    var currentNode : LinkedNode<Int>? = resultNodeHead
    while list1?.value != nil && list2?.value != nil {
        if list1!.value < list2!.value {
            currentNode?.next = list1
            list1 = list1?.next
        } else {
            currentNode?.next = list2
            list2 = list2?.next
        }
        currentNode = currentNode?.next
    }
    if list1 != nil {
        currentNode?.next = list1
    }
    if list2 != nil {
        currentNode?.next = list2
    }
    resultNodeHead.printList()
}

mergeLinkedLists(listOne: linkedListRoot, listTwo: linkedListRoot2)
