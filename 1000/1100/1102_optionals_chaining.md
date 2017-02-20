# Optionals Chaining

## Introduction
Welcome to lesson 2 of Part 1 of Swift Fundamentals with me. Just to recap, in our previous lesson, you've learned why we optionals, and there are two ways to unwrap. But, have you ever wondered why you see those `?` and `!` automatically added when you randomly try to get properties and methods in object? If you haven't, that's okay. You will find out. The goal is to prevent you from guessing and checking. Let's find out what's really going under the hood. Let's begin!

## Lecture Notes

### Example
```swift
import UIKit
let label = UILabel().highlightedTextColor?.cgColor
```

### Create an Object
```swift
class Human {
  var name: String
  init(name: String) {
    self.name = name
  }

  func sayHello() {
    print("Hello")
  }
}

let bob = Human(name: "Bob")
bob.name
bob.sayHello()
```

```swift
class Apartment {
  var human: Human?
}

var seoulApartment = Apartment()
seoulApartment.human = Human(name: "Bobby")

var myName = seoulApartment.human?.name

if let name = myName {
  print(name)
}
```

### Source Code
### Resources
Chapter for Object Oriented Programming



## Conclusion
Now, you no longer have to guess when to use `?` and `!` mark when you are working with objects such as UIKit. Please remember that if you see any `?` then make sure you unwrap implicitly. If you have any questions, make sure check out resources and HipChat if you have any questions.

In our next lesson, you are learn how to use a `guard` statement to implicitly unwrap and why you use it in the first place instead of using `if let`. Let's go!


#### Stay Connected
If you have any questions, don't hesitate to email me at bobleesj@gmail.com.
<p>
<a href="https://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bob_the_developer
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
