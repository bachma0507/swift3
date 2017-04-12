//: Playground - noun: a place where people can play

import UIKit

var emptyArrayStr: [String] = []

var arrayDouble: [Double] = [1.2, 3.2, 4.6, 7.8]

var arrayStr = ["barry", "gerry", "ralph", "lanson", "nickey"]

emptyArrayStr.append("cat")

arrayDouble.append(3.8)

arrayStr.append("pansy")

emptyArrayStr.remove(at: 0)

arrayDouble.remove(at: 1)

arrayStr.remove(at: 2)

emptyArrayStr.removeAll()

arrayDouble.insert(9.9, at: 2)

var oddNumbers: [Int] = []


var i = 0

for i in 0..<100 {
    
    if i % 2 != 0 {
    oddNumbers.append(i)
    }
}

print(oddNumbers)

var sums: [Int] = []

for number in oddNumbers {
    
    sums.append(number + 5)
}

print(sums)

var newx = 0

repeat{
    
    var number = sums[newx]
    print("The sum is: \(number) and the interation is: \(newx)")
    newx = newx + 1
}
while (newx < sums.count)












