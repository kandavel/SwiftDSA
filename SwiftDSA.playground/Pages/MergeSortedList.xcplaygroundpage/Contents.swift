//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var list1 = list1
        var list2 = list2
        var resultHead = ListNode()
        var final = resultHead
        while (list1 != nil) || (list2 != nil) {
            if list1 != nil && list2 != nil {
                if list1!.val > list2!.val {
                   resultHead.next = ListNode(list2!.val)
                   list2 = list2?.next
               }
                else {
                   resultHead.next = ListNode(list1!.val)
                   list1 = list1?.next
                }
            }
            else if list1 != nil {
                 resultHead.next = ListNode(list1!.val)
                 list1 = list1?.next
            }
            else {
                resultHead.next = ListNode(list2!.val)
                list2 = list2?.next
            }
            resultHead = resultHead.next!
        }
        return final.next
    }
var node1List1 : ListNode  = ListNode(3)
var node1List2 : ListNode  = ListNode(1)
var node1List3 : ListNode  = ListNode(2)
var node1List4 : ListNode  = ListNode(9)
node1List1.next  = node1List2
node1List2.next  = node1List3
node1List3.next  = node1List4



//

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
            currentNode = currentNode.next!
            print(currentNode.value)
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


func mergeLinkedLists(listOne: LinkedNode<Int>?, listTwo: LinkedNode<Int>?) {
    var list1 = listOne // 1
    var list2 = listTwo // 2
    let resultNodeHead = LinkedNode(next: nil, value: 0) // 3
    var currentNode : LinkedNode<Int>? = resultNodeHead // 4
    while list1 != nil && list2 != nil {// 5
        
        print("\nList1Value  :: \(list1!.value)\n")
        print("\nList2Value  :: \(list2!.value)\n")
        
        if list1!.value < list2!.value { // 5
            currentNode?.next = list1
            list1 = list1?.next
        } else {
            currentNode?.next = list2
            list2 = list2?.next
        }
        
        currentNode = currentNode?.next // 6
    }
    
    if list1 != nil { // 7
        currentNode?.next = list1
    }
    
    if list2 != nil { // 7
        currentNode?.next = list2
    }
    
    resultNodeHead.next?.printList() // 8
}
mergeLinkedLists(listOne: linkedListRoot, listTwo: linkedListRoot2)
