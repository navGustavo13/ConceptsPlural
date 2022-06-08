//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 
 PROTOCOL: A set of rules or code of behavior
 
 Each protocol has a name
 
 * a list of methods(names, parameters, and return types)
 
 * a list of properties (name,type, get/set)
 
 General Purpose:
 
        Creating Collections, Comparing Instances, Converting, Sorting, Debugging
        
        App-Specific: Loading data, saving data, spell checking, Resizing UIs
 
 
 
 */


class Player: CustomStringConvertible {
    
    var name: String
    var livesRemaining: Int
    var ememiesDestroyed: Int
    var penalty: Int
    var bonus: Int
    
    var description: String {
        return "Player \(self.name) has a score of \(self.score) and \(self.livesRemaining) lives remaining."
    }
    
    //computed property
    var score: Int {
        get {
                return (ememiesDestroyed*1000) + bonus + (livesRemaining * 5000) - penalty
        }
        set{
            print("You passed in \(newValue) but I'm going to ignore it.")
        }
    }
    
    init(name:String){
        self.name = name
        self.livesRemaining = 3
        self.ememiesDestroyed = 0
        self.penalty = 0
        self.bonus = 0
    }
    
}


let newPlayer = Player(name: "Ava")

newPlayer.ememiesDestroyed = 326
newPlayer.penalty = 872
newPlayer.bonus = 25000

print("THe final score is \(newPlayer.score)")
newPlayer.score = 12500


//DEFINE protocol

protocol MyProtocol {
    func showMessage()
    
    var name: String { get }
}

//adopt . conform

struct MyStruct:MyProtocol{
    
}
