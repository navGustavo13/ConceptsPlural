//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


func difference(between firstAmount: Int , and secondAmount: Int) -> Int {
    
    if firstAmount > secondAmount {
        return firstAmount - secondAmount
    } else {
        return secondAmount - firstAmount
    }
    
}


let result = difference(between:27381 , and:7863)

print("The difference is. \(result)")
