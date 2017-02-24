/*:
 
 ## The UIKit Fundamentals with Bob
 ### Part 1: Intermediate Swift 3 OOP
 ### Convenience Init
 
 Problem: I'm lazy. Can we initialize quickly?
 
 */
class Human {
  var name: String
  
  // Normal Init = Designated Init
  init(name: String) {
    self.name = name
  }
  
  
  // Convenience init initilizes the designated init method
  convenience init() {
    self.init(name: "Bob the Developer")
  }
  
}


extension Human {
  convenience init(enterNumber: Int) {
    self.init(name: String(enterNumber))
  }
}



let bob = Human(name: "Bob Lee")
let bobby = Human()
bobby.name


let newBob = Human(enterNumber: 50)
newBob.name


import UIKit

let randomColor = UIColor(colorLiteralRed: 255/255, green: 80/255, blue: 85/255, alpha: 1)

extension UIColor {
  
  convenience init(r: Float, g: Float, b: Float) {
    self.init(colorLiteralRed: r/255, green: g/255, blue: b/255, alpha: 1)
  }
}

let myFavoriteColor = UIColor(r: 255, g: 80, b: 85)




