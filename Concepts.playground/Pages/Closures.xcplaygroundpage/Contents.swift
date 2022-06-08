//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// closures let us take  lines of code and group it together to use elsewhere in our program

// function - a block of code you intend to call
// closure  - a block of code you inted to pass

struct Book{
    var title: String
    var authorLastName: String
    var authorFirstName: String
    var readingAge: Int
    var pageOut: Int
}

let book1 = Book.init(title:"Where the woi",
                      authorLastName:"SENDAK",authorFirstName:"Maurice",readingAge:4,pageOut:48)
let book2 = Book.init(title:"The little Prince",
                      authorLastName:"de Saint-Exupéry",authorFirstName:"Antoine",readingAge:10,pageOut:96)
let book3 = Book.init(title:"Oh, The places You'll Go!!",
                      authorLastName:"Seuss",authorFirstName:"Dr",readingAge:10,pageOut:56)
let book4 = Book.init(title:"Goodnight Moon",
                      authorLastName:"Wise brown",authorFirstName:"Margaret",readingAge:1,pageOut:30)
let book5 = Book.init(title:"The hobbit",
                      authorLastName:"SENDAK",authorFirstName:"Maurice",readingAge:12,pageOut:300)

let allBooks = [book1,book2,book3,book4,book5]


if book1.readingAge <= book2.readingAge{
    print( "true" )
}else{
    print( "false" )
}


func compareTwoBooks(firstBook: Book, secondBook: Book)-> Bool{
    if firstBook.readingAge <= secondBook.readingAge {
        return true
    } else {
        return false
    }
    
}


let ageSortedBooks = allBooks.sorted(by: compareTwoBooks)

let ageSortedBooks2 = allBooks.sorted { firstBook, secondBook
    in
    
    if firstBook.readingAge <= secondBook.readingAge {
        return true
    } else {
        return false
    }
}


let ageSortedBooks3 = allBooks.sorted { $0.readingAge <= $1.readingAge}
(ageSortedBooks3)


let shortestToLongest = allBooks.sorted {$0.pageOut <= $1.pageOut}
shortestToLongest


let booksForUnder10s = allBooks.filter {$0.readingAge < 10}
booksForUnder10s
