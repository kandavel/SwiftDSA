//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
protocol Vehicle {
    associatedtype T
    func run(object: T)
}

func run<P: Vehicle, T>(arg1: P, arg2: T) {
  //  arg1.run(object: arg2)
}



class Panda {
    func setupGrass(grass : Grass?) {
        grass?.closure =  {
            self.run()
        }
    }
    
    func run() {
        print("run")
    }
    
    deinit {
        print("hello")
    }
    
}
class Grass {
    var closure: (() -> Void)?
    
    deinit {
        print("world")
    }
}

var p  :  Panda?  = Panda()
var grass: Grass? =  Grass()
p?.setupGrass(grass: grass)
p = nil
grass  = nil


var a = 0
var b =  0
let closure = {
    print("For a is  \(a)")
    print("For b is  \(b)")
}
a = 10
b = 10
closure()

class A {
    func method() {
        print("A- method1")
    }
}
extension A {
    func method2() {
        print("A- method2")
    }
}
class B : A {
   override func method() {
        print("B- method1")
    }
    
     override func method2() {
         print("B- method2")
     }
}
let bb  =  B()
bb.method()
bb.method2()
