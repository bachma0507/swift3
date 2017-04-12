//: Playground - noun: a place where people can play

import UIKit

//type inference
var str = "Hello, playground"

//explicitly declared type
var message: String = "My Message"

//string manipulation or string concatenation
var firstName = "Jack"
var lastName = "Bauer"
var fullName = firstName + " " + lastName

//string interpolation (insert variables into strings)
var age = 45
var fullName2 = "\(firstName) \(lastName) is age \(age)"

//string is a class and has many properties and functions
fullName.append(" III")

var bookTitle = "revenge of the nerds"

bookTitle = bookTitle.capitalized

var annoyingChatroomCapsGuy = "PLEASE HELP ME NOW! HERE IS MY 100 LINES OF CODE."

var lowercasedChat = annoyingChatroomCapsGuy.lowercased()


var sentence = "What the fetch?! Heck that is crazy!"

if sentence.contains("fetch") || sentence.contains("Heck"){
    
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "playa")
}




