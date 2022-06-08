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
    func showMessage() {
        print( "Now conforming...")
    }
    
    var name: String {
        return "Gus"
    }
    
    
}


//Three Parts to error Handling
/* 1 Define it
        What is?
        Connection error?
        Save error?
        Calculation error?
    
   2 Throw it
 
        Where and when can it happen?
 
    3 Handle it
 */


//Define


enum ServerError:Error{
    
    case noConnection
    case serverNotFound
    case authenticationRefused
    
}

// use it


func checkStatus(serverNumber:Int) throws -> String{
    
    switch serverNumber{
        case 1: print("You have no connection.")
                throw ServerError.noConnection
        case 2: print("Authentication failed")
                throw ServerError.authenticationRefused
        case 3: print("Server 3 is up and running!")
        
        default:
            print("Cant find that server")
            throw ServerError.serverNotFound
    }
    
    return "Success"
    
}

//handle it

do  {
    let result = try checkStatus(serverNumber: 1)
    print(result)
}
catch ServerError.noConnection {
    
}
catch {
    print("The problem is:\(error)")
}



if let result = try? checkStatus(serverNumber: 1){
    print(result)
}

//guard and defer

func processTrack(trackName: String?, artist: String?, duration: Int?){
    
    
    if let unwrappedName = trackName,
           let unwrappedArtist = artist,
              let  unwrappedDuration = duration{
        
    } else {
        
        print("THE VALUES NOT PROVIDED")
    }
    
    
}


func processTrack_GUARD(trackName: String?, artist: String?, duration: Int?){
    
    guard let unwrppedTrack = trackName ,
          let unwrppedArtist = artist,
          let unwrppedDuration = duration
            else { return }
  
    
    
}


//defer
