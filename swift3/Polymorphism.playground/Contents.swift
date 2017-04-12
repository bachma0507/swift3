

import UIKit

//Example of polymorohism is using a base class with properties and functions that can be applied to sub classes with overrides and /or additions to base properties and / or base functions to suit the sub class needs without having to re-create properties and functions for each sub class.

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double)-> Double {
    
    return area!
    }
    
}

class Triangle: Shape {
    
    override func calculateArea(valA: Double, valB: Double)-> Double {
        area = (valA * valB) / 2
        
        return area!
    }
}

class Rectangle: Shape {
    override func calculateArea(valA: Double, valB: Double)-> Double {
        area = valA * valB
        
        return area!
    }
    
}




