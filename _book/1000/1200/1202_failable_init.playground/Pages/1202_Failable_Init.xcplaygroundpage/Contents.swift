
/*:
 
 ## The UIKit Fundamentals with Bob
 ### Part 1: Intermediate Swift 3 OOP
 ### Failable Init
 
 Problem: Can initialization fail? Okay, how?
 
 */

class EBook {
  let title: String
  init?(enterTitle: String) {
    if enterTitle.isEmpty { return nil }
    title = enterTitle
  }
  
}

let ElonMuskBook = EBook(enterTitle: "Elon Musk Book")

// ElonMuskBook!.title

let FakeMuskBook = EBook(enterTitle: "")




// Second Part: Throwing Error 
enum NameError: Error {
  case noName
}


struct UdemyCourse {
  let courseName: String
  
  init(name: String) throws {
    if name.isEmpty {
      throw NameError.noName
    }
    self.courseName = name
  }
}

// Handle Error 
do {
  let myCourse = try UdemyCourse(name: "")
  myCourse.courseName
  
} catch NameError.noName {
  print("Bob, please enter the name")
}










