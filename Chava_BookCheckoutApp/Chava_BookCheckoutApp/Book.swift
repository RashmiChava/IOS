//
//  Book.swift
//  Chava_BookCheckoutApp
//
//  Created by student on 4/7/22.
//

import Foundation


struct Book {
    var bookId = ""
    var bookName = ""
    var bookImage = ""
    var totalBooks = ""
}


let b1 = Book(bookId:"1234",bookName: "Attitude is Everything", bookImage: "attitude", totalBooks: "5")
let b2 = Book(bookId:"3579",bookName: "Everyone has a Story", bookImage: "img1", totalBooks: "10")
let b3 = Book(bookId:"2468",bookName: "2 States", bookImage: "states", totalBooks: "20")
let b4 = Book(bookId:"9999",bookName: "Half Girl Friend", bookImage: "half", totalBooks: "10")
let b5 = Book(bookId:"5555",bookName: "Rich Dad Poor Dad", bookImage: "rich", totalBooks: "15")
var booksArray:[Book] = [b1,b2,b3,b4,b5]

