//: Playground - noun: a place where people can play

import UIKit



//collection types in swift: Array, Set, Dictionary
//Array is made up of Indexes and Values in an ordered linear format eg index 0, 1, 2, 3, etc
//Set made up of unique values in an unordered format
//Dictionary is made up of keys and values. Keys must always be unique, but the values do not have to be unique. values are not ordered. Complex algorithms help to retrieve and fetch keys in the dictionary.

//initializing dictionary by specifying type
var namesOfIntegers = [Int: String]()

namesOfIntegers = [1: "one", 2: "two", 4: "four", 5: "five"]

namesOfIntegers[3] = "three" //'3' is the name of the key. It is not an index like in an array. So this is assigning value "three" to key 3 in the dictionary.

namesOfIntegers[25] = "twenty five"

print("\(namesOfIntegers)")

//this will empty a dictionary of its keys and values
namesOfIntegers = [:]


//initializing a dictionary of airports by specifying type. With type inference var airports = ["key": "value"]
var airports: [String: String] = [ "XYZ": "Toronto Pearson", "POS": "Port of Spain", "MCO": "Orlando"]


print ("The airports dictionary has \(airports.count) items.")

if airports.isEmpty {
    
    print("The airports dictionary is empty")
}else{
    print("The airports dictionary has \(airports.count) items")
    
}

//since this is a dictinary and not an array, and is not ordered, we do not care where we add a key and value, so we do not need to append it. Just need to add a key and its value
airports["TPA"] = "Tampa"

print("\(airports)")

//if we need to overide or update a key
airports["TPA"] = "Tampa International Airport"

print("\(airports)")


airports["DEV"] = "Devslopes"


//removing key and value of item
airports["DEV"] = nil

print(airports)

//looping through dictionary and returning a tuple which is a data element with two items in it. Could have used 'key, val' or any other string combination for the tuple

for (airportCode, airportName) in airports {
    
    print("\(airportCode): \(airportName)")
}



//doing another loop to loop through just the keys

for key in airports.keys {
    
    print("Key: \(key)")
}

//same thing for the values
for val in airports.values {
    
    print("Value: \(val)")
}















