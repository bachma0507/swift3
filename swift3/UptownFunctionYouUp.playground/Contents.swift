//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//code smell: something doesn't look right with your code. In this case, we need a function. It violates the DRY principle
//of Don't Repeat Yourself

//shape 1
var length = 5
var width = 10

var area = length * width

//shape 2
var length2 = 15
var width2 = 20

var area2 = length2 * width2

//shape 3
var length3 = 25
var width3 = 30

var area3 = length3 * width3

//create function instead with 2 parameters or arguments: length with Int type and width with Int type with return type of Int. Functions are also known as methods in other languages. Nothing gets called after Return statement in function.
func calculateArea(length: Int, width: Int) -> Int {
    //can do this
    //let newArea = length * width
    //return newArea
    
    //or better still
     return length * width
    
}

let shape1 = calculateArea(length: 5, width: 10)

let shape2 = calculateArea(length: 15, width: 20)

let shape3 = calculateArea(length: 25, width: 30)


func canItBePurchased (bankBalance: Double, itemPrice: Double) -> Double{
    
    //bankBalance = 300 this cannot be done since bankBalance is a constant. However, you can change that by writing the function as: func canItBePurchased (bankBalance: inout Double, itemPrice: Double) and then removing the return statements in the body of the function.
    
    if itemPrice <= bankBalance {
        
        
        let remainingBalance = bankBalance - itemPrice
        print("Item purchased. Your remaining balance is \(remainingBalance)")
        return remainingBalance
        
    }
    else{
        print("You are broke! Your Bank Balance is \(bankBalance)")
        return bankBalance
    }
    
}

var myBankBalance = 400.00
var itemIwanttoBuyPrice = 350.00

myBankBalance = canItBePurchased(bankBalance: myBankBalance, itemPrice: itemIwanttoBuyPrice)

var newItemPrice = 200.00

myBankBalance = canItBePurchased(bankBalance: myBankBalance, itemPrice: newItemPrice)


