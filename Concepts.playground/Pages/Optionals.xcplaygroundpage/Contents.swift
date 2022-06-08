import UIKit

var greeting = "Hello, playground"


var firstName: String
var middleName: String?
var lastName: String


var email: String?
var secondaryEmail:String?

var daysUntilNextTrip: Int?

daysUntilNextTrip = 10
daysUntilNextTrip = nil


var regularInt: Int
var optionalInt: Int?

regularInt = 100
optionalInt = 100

regularInt = regularInt + 5
//optionalInt = optionalInt + 5


if optionalInt != nil{
    var unwrappedInt = optionalInt!
    unwrappedInt = unwrappedInt + 50
    print(unwrappedInt)
}


if let unwrappedInt = optionalInt {
    print(unwrappedInt)
}
