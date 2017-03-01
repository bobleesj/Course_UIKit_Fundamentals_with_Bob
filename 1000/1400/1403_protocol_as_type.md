# Protocol as Type

## Introduction
Welcome to Lesson 3 of The UIKIt Fundamentals Part 1 Intro to Protocol Oriented Programming. You should be guilty if you haven't thought about how POP can be applied in your future app. If you are just consuming without thinking. You are a zombie. You are passive. You are not going to learn. Stop being passive. Think. Well, let's learn more about Protocol Oriented Programming. You will be awed.

## Lecture Notes
### Problem
Protocol met with Generics

Create a protocol called, `EastAsianable`. It contains two properties.

```swift
protocol EastAsianable {
  var useChopstic: Bool { get }
  var origin: String { get }
}
```

Create an extension to `EastAsianable` that sets `useChopstic` to `true`.

```swift
extension EastAsianable {

  // Extension may not contain stored properties
  var useChopstic: Bool {
    return true
  }
}
```

Create `Korean`, `Japanese`, and `Chinese` that conforms to `EastAsianable`.
```swift
struct Korean: EastAsianable {
  var origin: String = "Korea"
}


class Japanese: EastAsianable {
  var origin: String = "Japan"
}

struct Chinese: EastAsianable {
  var origin: String = "China"
}
```

### Protocol as Type
Just like you may group into an array using `[String]` and `[Int]`, you may group elements that conform to the same protocol.

```swift
let EastAsians: [EastAsianable] = [Korean(), Japanese(), Chinese()]
```

Since every element that conforms to `EastAsianable` contains `origin`, you may loop through the element.

```swift
for EastAsian in EastAsians {
  print("I'm from \(EastAsian.origin)")
}
```

### Practical Examples
Practical Examples: You may combine UILabel, UIImageView, loop through to change colors, animation, and so on. Use your imagination.

### Protocol Met Generics
Create a protocol called, `Sleekable` that contain a property.
```swift
protocol Sleekable {
  var price: String { get }
}
```

Create `Diamond`, `Ruby`, and `Glass` that conform to `Sleekable`.

```swift
struct Diamond: Sleekable {
  var price: String = "Very High"
}

struct Ruby: Sleekable {
  var price: String = "High"
}

class Glass: Sleekable {
  var price: String = "Dirt Cheap"
}
```

Create a generic function that only takes a parameter whose type must conform to `Sleekable`.
```swift
func stateThePrice<T: Sleekable>(enterGem: T) {
  print("I'm expensive. In fact, I'm \(enterGem.price)")
}

stateThePrice(enterGem: Ruby())
```

### Source Code
[1403_Protocol as Type](https://www.dropbox.com/sh/vvy34bgbyio7k4p/AADYOs3OUaU38RSdN4HaG4OWa?dl=0)
### Resources

[Intro to Protocol Oriented Programming  (Blog)](https://medium.com/ios-geek-community/introduction-to-protocol-oriented-programming-in-swift-b358fe4974f#.cwpeva7h8)

If you are interested in applying to UIKit
[Protocol Oriented View (Blog)](https://medium.com/ios-geek-community/protocol-oriented-programming-view-in-swift-3-8bcb3305c427#.pbyihqrsa)


## Conclusion
That's great. Again, you've learned how to apply generics to protocol. Keep imagining and thinking how Protocol Oriented Programming can be applied in your code right now. Keep thinking. Imagining, wake the fuck up. Don't reply on me. Don't expect me to feed you. If you are thinking, great job. I'm really proud of you. In the next lesson, you are going to learn the most important concept in iOS programming. If you don't understand this, you are just going to be a code monkey. If you are confused, keep searching and googling. Again, don't rely on me. Let's learn delegate.

#### Stay Connected
If you'd like to be on my mailing list and receive personal updates on upcoming books and courses, feel free to send me an email at `bobleesj@gmail.com`
<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
