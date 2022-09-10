//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

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

let linkedNode7 = LinkedNode(next: nil, value: 10)
let linkedNode6 = LinkedNode(next: linkedNode7, value: 9)
let linkedNode55 = LinkedNode(next: linkedNode6, value: 8)
let linkedNode44 = LinkedNode(next: linkedNode55, value: 6)
let linkedNode33 = LinkedNode(next: linkedNode44, value: 4)
let linkedNode22 = LinkedNode(next: linkedNode33, value: 3)
let linkedListRoot2 = LinkedNode(next: linkedNode22, value: 1)


func getIntersectingNode(listNode1 : LinkedNode<Int>?,listNode2 : LinkedNode<Int>?) {
    
    var head1 = listNode1
    var head2 = listNode2
    
    while head1 !== head2 {
        // the nil must be traversed
        if head1 == nil {
            head1 = head2
            print("Nil Value Condition Statisfied  Head1 :: \(head1?.value)\n")
        } else {
            print("CurrentValue before of Head1 :: \(head1?.value)\n")
            head1 = head1?.next
        }
        
        if head2 == nil {
            head2 = head1
            print("Nil Value Condition Statisfied  Head2 :: \(head2?.value)\n")
        } else {
            print("CurrentValue before of Head2 :: \(head2?.value)\n")
            head2 = head2?.next
        }
    }
}


getIntersectingNode(listNode1: linkedListRoot, listNode2: linkedListRoot2)
