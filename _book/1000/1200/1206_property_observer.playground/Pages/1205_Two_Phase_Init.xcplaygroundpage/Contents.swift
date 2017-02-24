
/*:
 
 ## The UIKit Fundamentals with Bob
 ### Part 1: Intermediate Swift 3 OOP
 ### Two Phase Initializations
 
 Problem: How can one init init the other?
 */


struct NuclearRocket {
  var meters: Double
  var liters: Double
  
  // Init for 🇰🇷
  init(meters: Double, liters: Double) {
    self.meters = meters
    self.liters = liters
 }
  
  // Init for 🇺🇸
  
  init(ft: Double, gallons: Double) {
    let convertedMeters = ft / 3.28
    let convertedLiters = gallons * 3.79
    self.init(meters: convertedMeters, liters: convertedLiters)
  }

}

// N.Korea vs America 

let northKorea = NuclearRocket(meters: 120, liters: 56789876)
let america = NuclearRocket(ft: 424, gallons: 89098902)











