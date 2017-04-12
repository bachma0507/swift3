//: Playground - noun: a place where people can play

import UIKit


class Vehicle {
    
    var vehicleType: String?
    var tires: Int?
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    //init(){
    //    print("I am the parent")
    //}
    
    
    
    func drive(speedIncrease: Double){
        currentSpeed += speedIncrease * 1 //currentSpeed = currentSpeed + speedIncrease * 2
        
    }
    
    func brake(){
        
    }
}


class SportsCar: Vehicle { //creating a subclass which inherits from Vehicle class. This syntax can be used to inherit from a class or type eg 'var age: Int?' or 'var age: Int = 25'
    override init(){ //boilerplate when creating subclass
        super.init() //boilerplate when creating subclass
        //print("I am the child")
        vehicleType = "car"
        make = "BMW"
        model = "3 series"
        tires = 4
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3 //overrides drive function since we want the sports car subclass to be faster
    }
}


let car = SportsCar()



class Truck: Vehicle {
    override init() {
        super.init()
        vehicleType = "truck"
        make = "Ford"
        model = "F series"
        tires = 6
        
    }
    var towLoad: Double?
    var fourByfour: Bool?
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    
    
}

let myTruck = Truck()

if let myMake = myTruck.make {
    print("My truck's make is: \(myMake)")
}

if let myModel = myTruck.model {
    print(myModel)
}

if let myTires = myTruck.tires {
    print(myTires)
}

myTruck.towLoad = 2300.00
myTruck.fourByfour = true

if let myTowLoad = myTruck.towLoad {
    
    print("My truck can pull a heavy load!")
}

if let myFourByFour = myTruck.fourByfour {
    
    print("My truck can drive through snow!")
}






