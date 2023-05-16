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
            print("next NodeValue ::\(currentNode.value)\n\n")
        }
    }
    
}

func rotateRight(_ head: LinkedNode<Int>?, _ k: Int) -> LinkedNode<Int>? {
        if head == nil { return nil }

        let oldHead = head
        var length = 1
        var current = head
        while current?.next != nil {
            length += 1
            current = current?.next
        }
        let k = k % length
        if k == 0 { return oldHead }

        let oldTail = current
        oldTail?.next = oldHead
        
        current = oldHead
       print("Tail to loop current value :: \(current?.value)")
    
        print("For Loop Iteration Starts")
        for _ in 0..<(length - k - 1) {
            print("Before assignnig Value inside \(current?.value)\n")
            current = current?.next
           // print("after assignnig Value inside \(current?.next?.value)\n")
        }
    print("For Loop Iteration Ends")
    
        print("current node Pointes at \(current?.value)")
        let newTail = current
      print("current new Pointes at \(newTail?.value)")
        let newHead = newTail?.next
        newTail?.next = nil
       print("Print New Head :: \(newHead?.value)")
        return newHead
    }

let linkedNode5 = LinkedNode(next: nil, value: 5)
let linkedNode4 = LinkedNode(next: linkedNode5, value: 4)
let linkedNode3 = LinkedNode(next: linkedNode4, value: 3)
let linkedNode2 = LinkedNode(next: linkedNode3, value: 2)
let linkedListRoot = LinkedNode(next: linkedNode2, value: 1)
let rotatednode  = rotateRight(linkedListRoot, 2)
rotatednode?.printList()
