/*:
 
 ## The UIKit Fundamentals with Bob
 ### Part 1: Intermediate Swift 3 OOP
 ### Computed Property
 
 Problem: Gettable and Settable? Can we build relationships between variables?
 */
func getDiameter(radius: Double) -> Double {
  return radius * 2
}
func getRadius(diameter: Double) -> Double {
  return diameter / 2
}


// Gettable 
// Only Read, No Customization

var gettableNumber: Double {
  get { return 12345 }
}

var readableNumber: Double {
  return 12345
}

// Settable
// Read, Re-written/Customization 

var radius: Double = 10

var diameter: Double {
  get { return radius * 2 }
  set { radius = newValue / 2 }
}

diameter

// 40 is newValue
diameter = 40
diameter = 1234567 // newValue

print(diameter)


// Ex) 

import Foundation


var side: Double = 100

var area: Double {
  get {
    return side * side
  }
  set(newArea) {
    side = sqrt(newArea)
  }
}


area = 100000000
side



































