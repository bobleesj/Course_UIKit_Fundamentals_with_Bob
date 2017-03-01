# Type Casting

## Introduction
Welcome back to lesson 4 of Part 1 Swift Fundamentals with Bob. I think you might be a little tired of seeing these `!` and `?` since Lesson 1. However, this is the most confusing concept in Swift, so we had to go over. I just wanted to be on the same as you guys are. In this lesson, you are going to learn how to convert types in objects that are created classes. I don't think I need to talk to much. I will show the example right away. Let's dive into.



## Lecture Notes

### Problem
How do you distinguish between as, as?, as! ?

Why does Xcode keep telling me what to do?

### Type Casting from UIKit
```swift
import UIKit
let label = UILabel() as UIView
```

### Human Class
Design a class called, `Human` that contains a single method.

```swift
class Human {
  func introduce() {
    print("Hi, I'm a human")
  }
}
```

### Human Subclass
Design `Korean` and `Japanese` that inherit from the `Human` class.

```swift
class Korean: Human {
  func singGangNamStyle() {
    print("Oppa Gangnam Style")
  }
}

class Japanese: Human {
  func doNinja() {
    print("Shhh.....")
  }
}
```

#### Check
```swift
let bob = Korean()
bob.introduce()
bob.singGangNamStyle()
```

### Type Casting
There are two ways: upcasting and downcasting.

#### Upcasting
Upcasting is all about going to its base/super class. Imagine the UIKIt class structure. If you may upcast `UILable` to `UIView`. To upcast, use `as`.

```swift
let newBob = bob as Human  // Korean -> Human
newBob.introduce()
newBob.singGangNamStyle() // Does not exist
```

#### Upcasting Example in Swift
```swift
var name = "Bob" as Any
var number = 20 as Any
var anyArray = [name, number] // [Any]
```


#### Downcasting
Downcasting the opposite of upcasting. Downcasting may fail. As a result, you may as force downcasting or implicit downcasting.

#### Force Downcasting (!)
It does not return an optional type but it fails, crashes.

```swift
// Force Downcasting
let newValue = anyArray[0] as! String
```
> Downcasting only applies when you upcast first.

#### Safe Downcasting (?)
 It returns an optional type. If downcasting fails, returns `nil`.

```swift
// Implicit Downcasting (safety)
let newNewValue = anyArray[0] as? Int
```

### Type Casting in Practice

#### Create Instances

```swift
let shion = Japanese()
let lee = Korean()
let kenji = Japanese()
let park = Korean()
```

#### Group
Explicit upcasting
```swift
 let humans: [Human] = [shion as Human, lee as Human, kenji as Human, park as Human]
```

Automatic upcasting inferred
```swift
let humans: [Human] = [shion, lee, kenji, park]
```

#### Call Method in Element
```swift
for human in humans {

  if let korean = human as? Korean {
    korean.singGangNamStyle()
  }

  if let japanese = human as? Japanese {
    japanese.doNinja()
  }

}
```

### Source Code
[1104_Type Casting](https://www.dropbox.com/sh/hxtqsqm8giidire/AACw-_bIamHcQMhMNMaqSIH8a?dl=)

### Resources
If you are still confused with type casting, feel free to watch my YouTube video I posted earlier.

[The Complete Swift 3 Tutorials with Bob: Type Casting (YouTube)](https://www.youtube.com/watch?v=A2M5sIXFNbg&t=12s)



## Conclusion
Great job, if you've understood what type casting is finally. It is somewhat similar to optionals right? You've learn two ways convert types. One is upcasting, `as`, which always works because you are going up to super class and you getting rid of properties and methods. The other way downcasting which is become more specific, but as you've seen it may work and may not work. Therefore you use either `as?`to safely convert or `as!` to force convert. You are going to find out how type casting is such a beautiful thing when it comes to grouping objets. You will find out in Part 2 of this course. I know you are excited, just bear with me for a second. In our next lesson, we are going to deal with another `?` and `!`. It's going to be the last one, and you will no longer fear those red signs on the left.



#### Stay Connected
If you'd like to be on my mailing list and receive personal updates on upcoming books and courses, feel free to send me an email at `bobleesj@gmail.com`
<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
