//: Playground - noun: a place where people can play

import UIKit

// a class has properies and functions. It's not an object.
class Vehicle {
    
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive(){
        //accelerate vehicle
    }
    
    func brake(){
        
        //stop vehicle
    }
}

class newVC: UIViewController {//this new class newVC inherits from UIViewController class
    
    override func viewDidLoad() {
        //TODO
    }
}

let bmw = Vehicle() //instantiates an instance of the Vehicle class. Once instantiated it's now an object
bmw.model = "428i" //sets a property of the object
bmw.drive() //calls a function of the object

func passByReference(vehicle: Vehicle){
    vehicle.model = "Cheese"
}

print(bmw.model) //this will print '428i'

passByReference(vehicle: bmw) //pass by reference. Cannot copy an object. you can copy integers, strings, doubles, etc since they're passed by value not by reference like an object

print(bmw.model) //this will print 'Cheese'






