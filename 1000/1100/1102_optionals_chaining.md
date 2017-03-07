# Optionals Chaining

## Introduction
Welcome to Lesson 2 of Part 1 Swift Fundamentals with me. Just to recap, in our previous lesson, you've learned why we optionals, and there were two ways to unwrap.

But, have you ever wondered why `?` and `!` automatically appear when you randomly try to get  properties and methods of an object? If you haven't, that's okay. You will find out. The goal is to prevent you from guessing and checking. Let's dig in what's really going under the hood. We shall begin.

## Lecture Notes

### Problem
Why do I see "?" and "!" when accessing methods and properties?


### Optional Chaining in UIKit
You might have seen something like this.
```swift
import UIKit
let label = UILabel().highlightedTextColor?.cgColor
```
A mysterious `?` appears all of a sudden.

### Design Human
Create a class called `Human` that contains one property and method.

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
```
Create an instance called `bob`.

```swift
let bob = Human(name: "Bob")
bob.name
bob.sayHello()
```

### Design Apartment
Create `Apartment` class that contains a property whose type is `Human?`.
```swift
class Apartment {
  var human: Human?
}
```

#### Initialize Property
Create an instance of `Apartment` and assign its `human` property whose type is optional.

```swift
var seoulApartment = Apartment()
seoulApartment.human = Human(name: "Bobby")
```

#### Call Property and Method
Now, try to grab the `human` property of `seoulApartment`. Since the type of `human` is optional, `?` gets added automatically.
```swift
var myName = seoulApartment.human?.name // Always return an optional since human is optional.
```
`myName` is an optional type. Therefore, unwrapping is needed.
```
if let name = myName {
  print(name)
}
```

### Source Code
[1102_Optional Chaining](https://www.dropbox.com/sh/175z8rul71numas/AADA3XYNrWQhYLnWWh0RHwMva?dl=0)

### Resources
I expect you to know what it means to create an object using a class and struct. If you had a hard time following up with this lesson, feel free to watch my tutorials on YouTube. Again, this course is designed for intermediates.


[The Complete Swift 3 Tutorial with Bob: Structure (YouTube)](https://www.youtube.com/watch?v=orvmHi498YI)

[The Complete Swift 3 Tutorial with Bob:  Inheritance (YouTube)](https://www.youtube.com/watch?v=YtA1b7dX_ZE)

[The Complete Swift 3 Tutorial with Bob: Initializers ( YouTube)](https://www.youtube.com/watch?v=Jejtrj9Xfpk&t=403s)


Also, I expect you to know:
 -  A `for-in` and `while` loop
 - The difference between `var` and `let`
 - Enumeration
 - A `switch `statement
 - An `else-if` statement
 - Arithmetic operations



## Conclusion
Now, you no longer have to guess when to use `?` and `!` when you are working with objects such as UIKit. Please remember that if you see any `?`, it will return an optional type. So make sure unwrap implicitly. If you have any questions, make sure check out resources above.

In our next lesson, you are learn how to use a `guard` statement to implicitly unwrap and why you use it in the first place instead of using `if let`. Let's go!


#### Stay Connected
I focus on building a long-term relationship with you. Feel free to follow on my social media for personal updates and engagement. You may see what my daily activity is like on Instagram.  


<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
