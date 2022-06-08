//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

 class Appliance{
    //propertires
    var manufacturer: String = ""
    var model: String = ""
    var voltage: Int = 0
    var capacity: Int?
    
    init(){
        self.manufacturer = "default manufactures"
        self.model = "default model"
        self.voltage = 120
    }
    
    init(withVoltaje: Int ){
        self.manufacturer = "default manufactures"
        self.model = "default model"
        self.voltage = withVoltaje
    }
    
   /* deinit{
        
    }*/
    
    func getDetails() -> String{
        var message = "This is the \(self.model) from \(self.manufacturer)."
        
        if self.voltage >= 220 {
            message += "This model is for European"
        }
        
        return message
    }
    
    
}


var kettle = Appliance()
kettle.manufacturer = "Megappliance, Inc"
kettle.model = "Teamaster 5000"
kettle.voltage = 220

print(kettle.getDetails())



/*
 STRUCTS/ENUMS
    Value Types
 
 Asssign it to a new variable or constant?
 The value is copied
 
 Pass it into a function?
 The value is copied
 
 */


/*
 CLASES
 References Types
 
 
  Assign it to a new variable or constant?
 Not copied- a reference is passed
 
 
 Pass it into a function?
 Not copied - a reference is passed
 
 */



class Message {
    var internalText = "This is some text"
}


var firstMessage = Message()

var secondMessage = firstMessage


secondMessage.internalText  += " with some more text added on"


print(firstMessage.internalText)
print(secondMessage.internalText)


if firstMessage === secondMessage {
    print("Yes -  they are references to the same instance")
}


class Toaster: Appliance{
    var slices: Int
    
    
    override init() {
        
        slices = 2
        super.init()
        
    }
    
    func toast(){
        print("Irrading now")
    }
}

var myToaster =  Toaster()

myToaster.manufacturer = "AcmeCorp"
myToaster.model = "Carbonizer"
myToaster.getDetails()





extension String {
    func removeSpaces()-> String {
        let filteredCharacters = self.filter {$0 != " "}
        return String(filteredCharacters)
    }
}


let album = "Decks and drums and rock and roll"
let scriptio = "Neqye peroo quisquan est qui dolorem ipsum quia sit amet"
let phrase = "Love is now here"

print(album.removeSpaces())
print(scriptio.removeSpaces())
print(phrase.removeSpaces())


class Player {
    
    var name: String
    var livesRemaining: Int
    var ememiesDestroyed: Int
    var penalty: Int
    var bonus: Int
    
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
