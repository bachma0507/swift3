//: Playground - noun: a place where people can play

import UIKit


var lotteryWinnings: Int? //this variable may or may not have a value. This is making use of an optional.

//the below will crash the app
//print(lotteryWinnings!)
//the '!' is unwrapping the optional looking to see what the value is. And since it is nil the app will crash. If a value was asigned to lotteryWinnings such as 'lotteryWinnings = 500'. then there will not be a crash since there is now a value and not nil. So DO NOT EVER unwrap and optional by using '!' without checking to see if the value is not nil.

if lotteryWinnings != nil {
    
    print(lotteryWinnings!)
}

//however the preferred way of checking to see if the optional is not nil is below. This is creating a constant and assigning the value of lotteryWinnings to it and will only assign a not nil value to the constant. If the value of lotteryWinnings is nil the constant is not created and the condition is not met and nothing prints.
if let winnings = lotteryWinnings {
    
    print(winnings)
}


//another example of optional when creating a class
class Car {
    
    var model: String?
}

var vehicle: Car? //creates a variable of type car optional

if let v = vehicle {//assiging vale of vehicle to constant v, and will only execute the rest of the conditional if vehicle does not have a nil value
    
    if let m = v.model {//doing the same here for optional model
        print(m)
    }
}


vehicle = Car() //creates an instance of car
vehicle?.model = "Bronco" //we put a '?' to indicate it's an optional since we do not know if it's going to have a value or nor

//however, below is a better and shorter way. It checks to see if the first contanst v has a value and then creates the contant, and then moves on to create the m constant since v has a value
if let v = vehicle, let m = v.model {
    
    print(m)
}


var cars: [Car]? //create array of type Car which may or may not have items in it

cars = [Car]() //initialize the array. The array is empty.

//below creates the constant and checks to see if the array has anything in it at the same time. The array exists and is empty so it's not nil, so you need this to see if there are elements in the array as well as not nil.
if let carArr = cars, carArr.count > 0 {
    //only execute if not nil and if more than 0 elements in array
    
} else {
    
    cars?.append(Car()) //this adds a Car to the array
    print(cars?.count as Any)
}


class Person {
    
    var age: Int! //this is an implicitly unwrapped optional. exact same thing as an optional but will not error out but will give a nil value which may not be what you want and can kill your app. So you should give 'age' a value to initialize it since it's not being initialized.
    
    func setAge(newAge: Int) {
        
        self.age = newAge
    }
    
}

var jack = Person()
print(jack.age) //prints a nil value because of 'Var age: Int!'

//this is the right way to do it.
class Person2 {
    
    private var _age: Int! //set as private so only accessed within this class
    
    //setup a
    var age: Int {//initialize in a getter or a computed property that veryone can access since it's not private.        
        if _age == nil {//checks to see _age is nil and sets it to 15
            _age = 15
        }
        
        return _age //returns 15
    }
    
    func setAge(newAge: Int) {
        
        self._age = newAge
    }
    
}

var jack2 = Person2()
print(jack2.age) //prints 15
//print(jack2._age) will give error since variable _age is private
jack2.setAge(newAge: 25)
print(jack2.age) //prints 25

//this class initializes the age variable immediately and doesn't have to make it private or implicit optional
class Person3 {
    var age: Int = 15
    
    func setAge(newAge: Int){
        
        self.age = newAge
    }
    
}

var jack3 = Person3()
print(jack3.age)
jack3.setAge(newAge: 35)
print(jack3.age)

//using contructor in class to initialize property
class Dog {
    var species: String //not using any optional (?) or implicit optional (!)
    
    init(someSpecies: String){ // this is the constructor and initializes the property 'species' and so the property does not need to have ? or !
        self.species = someSpecies
    }
    
}

var lab = Dog(someSpecies: "black lab") // as soon as we create an object using the Dog class we have to initialize it with the constructor and set the species

print(lab.species) //this will print 'black lab'



//so basically, after all is said and done, use an optional (?) if you are not sure your variable is going to have a value, and you need to use an 'if let' to check to see if it's nil in your code; use an implicit optional (!) if your variable is guaranteed to have a value at some point but not initially, and in this case, you need to make sure you have a getter (computed property) in your class to initialize it, so that if someone tries to access it without setting a value for it, the default value in the getter will be called. You can also use a constructor (init) if you do not want to use an optional or implcit optional with your property. This forces the object of the class to be initialized with the constructor on runtime and so some value must be given to the property upon creating the object.

