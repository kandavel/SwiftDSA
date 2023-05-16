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


func swapLinkedListPairs(_ head: LinkedNode<Int>?) -> LinkedNode<Int>? {
        var head = head, node = head, pre: LinkedNode<Int>?
        var count  = 0
        while node != nil, let next = node!.next {
            count = count  + 1
            let cur = next
            let tmp = cur.next
        
            
            
            if pre == nil  {
                (head = cur)
                print("Root head Value :: \(head?.value ?? 0)")
                print("current Value :: \(cur.value ?? 0)")
            }
            else {
                (pre!.next = cur)
                print("Previous head Value :: \(pre?.value ?? 0)")
            }
            
            
            
            
            
            
            print("previous current.next \(cur.next?.value)\n")
            print("node value \(node?.value)\n")
            
            cur.next = node
            print("after current.value \(cur.value)\n")
            print("after current.next.next \(cur.next?.value)\n")
            node!.next = tmp
            pre = node
            node = tmp
            print("End of iteration of ")
            print("pre node :: \(pre?.value)")
            print("node node :: \(node?.value)")
            
            
            

        }
        return head
    }
let linkedNode5 = LinkedNode(next: nil, value: 5)
let linkedNode4 = LinkedNode(next: linkedNode5, value: 3)

let linkedNode3 = LinkedNode(next: linkedNode4, value: 9)
let linkedNode2 = LinkedNode(next: linkedNode3, value: 2)
let linkedListRoot = LinkedNode(next: linkedNode2, value: 1)
//linkedListRoot.printList()

var swpppednode = swapLinkedListPairs(linkedListRoot)
while swpppednode?.next != nil {
    print("Swapped Value\n")
    print(swpppednode?.value)
    swpppednode = swpppednode?.next
}
