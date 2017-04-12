//: Playground - noun: a place where people can play

import UIKit

//An operator is a special symbol or phrase that you use to check, change, or combine values. For example, the addition operator (+) adds two numbers, as in let i = 1 + 2, and the logical AND operator (&&) combines two Boolean values, as in if enteredDoorCode && passedRetinaScan.

//Logical Not Operator - unary prefix operator !
//Logical and && - binary operator
//Logical or || - binary operator

//Unary operators operate on a single target (such as -a). Unary prefix operators appear immediately before their target (such as !b), and unary postfix operators appear immediately after their target (such as c!).
//Binary operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets.
//Ternary operators operate on three targets. Like C, Swift has only one ternary operator, the ternary conditional operator (a ? b : c).

let allowedEntry = false

if !allowedEntry { //this is indicating 'if NOT allowedEntry'
    
    print("Access Denied") 
}
else{
    print("Welcome")
}


if allowedEntry != true {
    
    print("Access Denied") //allowedEntry has a value of false
}
else{
    print("Welcome")
}

if allowedEntry == true{
    
    print("Access Denied")
}
else{
    print("Welcome")//allowedEntry has a value of false not true
}

let enteredDoorCode = true
let passedRetinaScan = false
let iAmTomCruiseFromMI = false

if enteredDoorCode && passedRetinaScan || iAmTomCruiseFromMI {
    
    print("Welcome")
}
else{
    
    print("Access denaied again")
}

let hasDoorKey = false
let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    print("Welcome")
}
else{
    print("Access Denied Again")
}
