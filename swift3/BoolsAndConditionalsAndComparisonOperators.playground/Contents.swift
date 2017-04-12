//: Playground - noun: a place where people can play

import UIKit

var amItheBestTeacherEver = true

amItheBestTeacherEver = false

if true == false || true == true {
    
    print("This will print since there is an or operator and the right side of the conditional is true")
}

var hasDataFinsihedDownloading: Bool = false

if !hasDataFinsihedDownloading {
    
    print("Data dowloading...")
}


hasDataFinsihedDownloading = true

//Load UI and other app features

//The conditional below returns a Boolean (in this case false)
//if 1 == 2 {
    
//    print("Should not see this")
//}

//comparison operators store results as Boolean
//Equal to: ==
//Not equal to: !=
//Greater than: >
//Greater than or equal to: >=
//Less than: <
//Less than or equal to: <=

var bankBalance = 500
var itemToBuy = 500

if bankBalance >= itemToBuy {
    
    print("Item purchased")
}

if bankBalance < itemToBuy {
    
    print("Not enough money!")
}

if bankBalance == itemToBuy {
    
    print("Your balance is 0")
}

var bookTitle1 = "My book is good"
var bookTitle2 = "My book is good"

if bookTitle1 != bookTitle2 {
    
    print("Please fix spelling")
}
else if bookTitle2.characters.count > 10{
    print("Find a shorter title for the book")
}
else{
    print("Book is good to go to printer")
}









