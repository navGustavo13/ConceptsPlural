//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//computed properties
//lazy properties

struct Movie{
    
    var title: String
    var director: String
    var releaseYear: Int
    var genre: String
    
    func summary()-> String{
        return ""
    }
    
}

var first = Movie(title:"",director:"",releaseYear: 200,genre:"")


struct Appliance{
    var manufacturer: String
    var model: String
}


var toaster = Appliance(manufacturer: "AcmeCorp", model: "Toasmatic")
