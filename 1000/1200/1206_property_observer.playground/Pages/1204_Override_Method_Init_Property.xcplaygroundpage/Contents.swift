/*:
 
 ## The UIKit Fundamentals with Bob
 ### Part 1: Intermediate Swift 3 OOP
 ### Override Method, Init, Property
 
 Problem: Super... Super.init? super.viewDidLoad?
 */
import UIKit

class MyViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    print("Hello")
  }
}

// Override Property/Method, Super
class Vehical {
  
  var description: String {
    return "Hello, I'm moving at 30km/hr"
  }
  
  func warning() {
    print("Be careful, I'm going pretty fast")
  }
  
}

class ToyCar: Vehical {
  let price = "$100"
  
  override var description: String {
    return "\(super.description). Hello, I'm a toy car. I'm \(price)"
  }
  
  override func warning() {
    super.warning()
    print("Let me just tell you, I can be dangerous")
  }
  

}

let myCar = ToyCar()
myCar.warning()


// Super.init 

// #1 goal is to put value to every property

class Human {
  var origin: String
  
  init(enterOrgin: String) {
    origin = enterOrgin
  }
}

class Korean: Human {
  let name: String
  
  init(enterName: String) {
    name = enterName
    super.init(enterOrgin: "Republic of Korea")
  }

  init(enterName: String, origin: String) {
    name = enterName
    super.init(enterOrgin: origin)
  }

  
}

let bob = Korean(enterName: "SangJoon", origin: "Korea")


// Override Init 
class Tesla {
  var numberOfWheels: Int
  
  init(enterWheelNumber: Int) {
    numberOfWheels = enterWheelNumber
  }
}


let dreamCar = Tesla(enterWheelNumber: 20)
dreamCar.numberOfWheels


class ModelS: Tesla {
  override init(enterWheelNumber: Int) {
    print("You've entered \(enterWheelNumber)")
    
    super.init(enterWheelNumber: enterWheelNumber)
    
    
  }
  
  
  
}

let myNewCar = ModelS(enterWheelNumber: 4)
myNewCar.numberOfWheels












