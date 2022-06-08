//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

enum MediaType{
    case book
    case movie
    case music
    case game
    case documentary
}


var itemType: MediaType
itemType = .book

itemType = MediaType.music


enum BottleSize: String {
    case half = "37.5 cl"
    case standard = "75 cl"
    case magnum = "1.5 litres"
    case jerobam = "3 litres"
    case methusalah = "6 litres"
}

var myBottle: BottleSize = .jerobam

print("Your \(myBottle) is \(myBottle.rawValue)")
