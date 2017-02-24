
/*:
 
 ## The UIKit Fundamentals with Bob
 ### Part 1: Intermediate Swift 3 OOP
 ### Type Property, Final and Static
 
 Problem: I'm so confused by Static, Final, Class. What are those?
 
 */

// Structs: static
struct SomeStructure {
  static var storedTypeProperty = "Some value."
  static var computedProperty: Int {
    return 120
  }
  static func hello() {
    print("hello")
  }
}

SomeStructure.storedTypeProperty
SomeStructure.computedProperty
SomeStructure.hello()


// Classes: Static + Class

class GrandParent {
  static var numberOfYearsInMarriage = 30
  // In Swift, you can't have stored property to class var
  class var numberOfYearsLiving: Int {
    return 90
  }
  
  static func introduce() {
     print("We've been married for \(numberOfYearsInMarriage)")
  }
  
  class func conclude() {
    print("I've been living for a while")
  }
}

// If it is static, you can not override
class Parent: GrandParent {
  override class var numberOfYearsLiving: Int {
    return 40
  }
  
  override class func conclude() {
    print("I've lived for \(numberOfYearsLiving) years")
  }
  
  
  
}

Parent.numberOfYearsLiving
Parent.conclude()


// Final does not apply to static because static is already final by itself 

// Final prevents anything from overriding

class Animal {
  final func bark() {
    print("You can't override me, Meow")
  }
  
  final class func barkAgain() {
    print("Bark bark")
  }
}

class Dog: Animal {
  // Can't override
//  override func bark() {
//    
//  }
}


// Why do we even care?


class BluetoothID {
  struct iPhone {
    static let iPhone4 = "4234-1232-1232-5465"
    static let iPhone5 = "7867-5676-4535-1235"
    static let iPhone6 = "3938-6738-1424-9876"
    static let iPhone7 = "4845-3148-1237-1296"
    static let iPhone8 = "7967-8123-7892-4563"
  }
}


BluetoothID.iPhone.iPhone4
BluetoothID.iPhone.iPhone8


enum AirDropID: String {
  case iPhone4 = "4234-1232-1232-5465"
  case iPhone5 = "7867-5676-4535-1235"
  case iPhone6 = "3938-6738-1424-9876"
  case iPhone7 = "4845-3148-1237-1296"
  case iPhone8 = "7967-8123-7892-4563"
}

AirDropID.iPhone8.rawValue
AirDropID.iPhone6.rawValue














