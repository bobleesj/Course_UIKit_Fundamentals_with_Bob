# Convenience Init

## Introduction
Welcome to the first lesson of The UIKit Fundamentals Part 1 Chapter 2 Advanced Object Oriented Programming.

In this lesson, you will learn. How to become lazy, or in other words, become smart when it comes to initializing an object. In programming, getting lazy to write less code is in fact good for your teammates and users as long as it's readable. Bill Gates once said, Whenever there is hard work to be done, I assign it to the laziest man as he is sure to find an easy way of doing it. Be Lazy. Think Crazy!" Let's get started.

## Lecture Notes

### Problem
I'm lazy. Can we initialize quickly?

### Create Class with Designated Init
Create a class called `Human`
```swift
class Human {
 var name: String

 init(name: String) {
   self.name = name
 }

 init(_ newName: String) {
   name = newName
 }

}
 ```

### Convenience Init
Convenience init initializes the designated init method by calling `self.init`.
```swift
class Human {
  var name: String

  init(name: String) {
    self.name = name
  }

  init(_ newName: String) {
    name = newName
  }

 convenience init() {
   self.init(name: "Bob")
 }

 convenience init(enterNumber: Int) {
   self.init(name: String(enterNumber))
 }

}
```

### Create Objects
```swift
let ben = Human("Hi")  // init(_ newName: String)
let leob = Human()  // convenience init()
let bob = Human(name: "Bob")  // init(name: String)

let rob = Human()  // Convenience Init()
rob.name  // "Bob"
```

### Initialize UIColor
Create an instance that stores `UIColor`.

```swift
import UIKit

let randomColor = UIColor(colorLiteralRed: 255/255, green: 80/255, blue: 85/255, alpha: 1)
```

#### Custom Convenience Init
Create our own convenience init that initializes the designated init by adding `extension` to `UIColor`.

```swift
extension UIColor {
 convenience init(r: Float, g: Float, b: Float) {
   self.init(colorLiteralRed: r/255, green: g/255, blue: b/255, alpha: 1)
 }
}

let randomColorWtihMe = UIColor(r: 20, g: 10, b: 50)
```

### Source Code
[1201_Convenience Init](https://www.dropbox.com/sh/irzwlfsvq551s9o/AAB0Taf5E7IFXPj-yzHuCSYoa?dl=0)

## Conclusion
What do you think? You've learned how to become lazy and effective at the same time. Imagine you are creating a library or a group of code for your teammates to use. Your teammate no longer has to use a designated init method initialize an object. It's a win-win situation. In our next lesson, let's talk about whether initialization might fail. Take care, and keep developing your skills and mind.

#### Stay Connected
If you'd like to be on my mailing list and receive personal updates on upcoming books and courses, feel free to send me an email at `bobleesj@gmail.com`
<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
