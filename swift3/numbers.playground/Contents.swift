//: Playground - noun: a place where people can play

import UIKit

//Numbers
//Type inference

var age = 30

//Explicity declared type
var weight: Int = 200

var someNumber: Double = 127899259550505585058503808

//By default swift will use a Double for this not a Float which is less accurate (see Swift 3 book)
var mileIranThisWeek = 56.45

var balanceInAccount = -10.07 //Btw, the negative sign is a unary operator since it's acting on one target

//unless you use an explicitly declared type
var Pi: Float = 3.14

//Arithmetic Operators
// + - / *

var area = 14 * 20

var sum = 3 + 2

var diff = 10 - 7

var div = 12 / 3

var div1 = 12 / 5 //In swift and other languages will not give the remainder with / operator. We need to use the
//remainder operator 

var remainder = 13 % 5

var result = "The result of 13 / 5 is \(div1) with a remainder of \(remainder)" //using string interpolation to combine
//variables

var randomNumber = 15

if randomNumber % 2 == 0 {
    print("This is an even number")
    
}
else{
    print("This is an odd number")
}


