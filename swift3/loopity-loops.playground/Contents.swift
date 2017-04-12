//: Playground - noun: a place where people can play

import UIKit

//Bad way
var employee1Salary = 45000.00
var employee2Salary = 100000.00
var employee3Salary = 54000.00
var employee4Salary = 20000.00

employee1Salary = employee1Salary + (employee1Salary * 0.10)
employee2Salary = employee2Salary + (employee2Salary * 0.10)
employee3Salary = employee3Salary + (employee3Salary * 0.10)
employee4Salary = employee4Salary + (employee4Salary * 0.10)

//Good way
//craete an array
var salaries = [45000.00, 100000.00, 540000.00, 20000.00]

//then create a loop, which creates a var x and assigns it 0 as an index, then repeats adding 1 to the value of x until the condition is met where x is less than salaries.count (that is, 3). This means it loops 4 times (0 + 1, 1 + 1, 2 + 1, 3 + 1)
var i = 0 //this could have been written as var index = 0
repeat {
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
    
    i += 1 //which is the same as i = i + 1. Without this it will go into an infinite loop
    
}while (i < salaries.count)

print(salaries)

//a more common way to do the above is with a 'for in' loop
for i in 0..<salaries.count { //this specifies a range. For index i, start at 0 then go to <salaries.count.
    
    salaries[i] = salaries[i] + (salaries[i] * 0.10)

}
print(salaries)

//simple example of for in loop that's inclusive of range 1 to 5
for i in 1...5 {
    print("index \(i)")//prints 5 times
}

//simple example of for in loop that's exclusive of 5
for z in 1..<5 {
    print ("Index z \(z)") //prints 4 times
}

//here is a 'for each' loop which does not have a range and acts on each item in the array
for salary in salaries {
    
    print("Salary: \(salary)")

}


