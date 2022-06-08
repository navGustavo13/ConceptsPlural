//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


//tuple example

let cameraType = "Canon"
let photoMode = true
var shutterSpeed = 60
var iso = 640
var aperture = "f1.5"


var basicTuple = (aperture,iso, cameraType)


func randomAlbum() -> (albumTitle:String,lenght:Int) {
    let title = "And In the Endless Pause There came The sound of bees"
    let duration = 2462
    
    return (title,duration)
    
}

let result = randomAlbum()
print(result.albumTitle)
