
/*:
 
 ## The UIKit Fundamentals with Bob
 ### Part 1: Intermediate Swift 3 OOP
 ### Property Observer
 
 Problem: How can I add observer/tracker to a property?
 
 
 */
// willSet
// didSet

var totalSteps: Int = 20 {
  
  willSet(newTotalSteps) {
    print("About to set totalSteps to \(newTotalSteps)")
  }

  didSet {
    if totalSteps > oldValue {
      print("You added, \(totalSteps - oldValue) step")
    }
  }
  
}

totalSteps = 40
totalSteps = 80
totalSteps = 120
totalSteps = 1000


// Practical Example 

var userLoggedIn: Bool = false {
  willSet(newBoolValue) {
    print("The user has tried something")
  }

didSet {
  if userLoggedIn == true {
      print("The user switched from \(oldValue) to \(userLoggedIn)")
    
    }
  }
}


userLoggedIn = false // the user has tried something 
userLoggedIn = true






























