//: Playground - noun: a place where people can play

import UIKit
//using type inference to initialize and declare an array
var employeeSalaries = [20000.00, 30000.00, 40000.00, 50000.00]

employeeSalaries.count

employeeSalaries.append(60000.00)

employeeSalaries.count

employeeSalaries.remove(at: 0)

employeeSalaries.count

//specifying type for array
var arrayOfInts: [Int] = [9, 18, 67, 30]
var arrayOfStrs: [String] = ["cat", "dog","fish","horse"]

//always initialize an array. Example below is empty array of type String
var students = [String]()

students.count

students.append("Jon")
students.append("jaco")
students.append("Jose")
students.append("Jingle")
students.append("Heimer")
students.append("Smith")

students.remove(at: 2)

print(students)

print(students[0])

//update index 1
students[1] = "barry"

print(students)




//below is only declaring array not initializing

var studentsList: [String]

//will get error when trying to add to this array
//studentsList.append("Jon Adams")


var listOfNumbers = [1, 2, 300, 10, 100]

var maxVal = listOfNumbers[0]

for number in listOfNumbers {
    if maxVal < number {
        print(maxVal)
        maxVal = number
    }
}

print(maxVal)

