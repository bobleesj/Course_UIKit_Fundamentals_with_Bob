# Delegate

## Introduction
Welcome to the last lesson of The UIKIt Fundamentals Part 1 Intro to Protocol Oriented Programming. Today, you learn the most important concept. It is not technically about protocol oriented programming. You use Protocol, but you will learn how to pass data between two classes using it. There are a lot of bullshit tutorials out there. You've come to the right place. Let me tell you the majority of people don't understand what's going on, and they simply copy off from the screen. Have you ever seen, tableView.delegate = self? What the heck is that?


## Lecture Notes
### Problem
I don't get it.

> You just have to memorize it. It's a gift from Apple engineers. Take it. Do not question why it works. But, find out why it is useful.You might have to watch this video multiple times

### Pass Data from ClassOne to ClassTwo
Create a protocol called, `PassDataDelegate`. It contains a method that takes `data` whose type is in `String` and returns `String`.

```swift
protocol PassDataDelegate {
  func passData(data: String) -> String
}
```

Create a class that contains an optional property whose type is `PassDataDelegate?`.
```swift
class ClassOne {
  var delegate: PassDataDelegate?
}
```

If you call the method, `passData` associated with the property, `delegate`, it will return `nil` since you have not initialized `delegate`.

```swift
ClassOne().delegate?.passData(data: "Bob")
```

Create `ClassTwo` that conforms to `PassDataDelegate`.  `ClassTwo` must contain `passData(data: String)`.

```swift
class ClassTwo: PassDataDelegate {

  func passData(data: String) -> String {
    return "You passed \(data)"
  }

}
```

Create instances
```swift
let classOne = ClassOne()
let classTwo = ClassTwo()
```

Set `classOne.delegate` to `classTwo`. It is possible since `classTwo` conforms to `PassDataDelegate`.
```swift
classOne.delegate = classTwo // you are sending data to classTwo
```

As soon as you make the relationship like above, whenver you call a method from `classOne`, you pass data to `classTwo` and execute the required method.

```swift
classOne.delegate?.passData(data: "123124124")
//  "You passed 123124124"
classOne.delegate?.passData(data: "Hello")
// "You passed Hello"
```

### Source code

[1404_Delegate](https://www.dropbox.com/sh/we5epsu2egiwyqa/AAC2JkR9H4VGWhLnmaBy9c2fa?dl=0)

### Resources




## Conclusion
Great, how was it guys? For those who are confused, you might have to watch this video 5-10 times to get used to it. You might have to search up on Google and learn more. You might have to playaround. If you are confused by my lesson and you are not getting it, it's your fault. It took me 2 weeks to understand delegate. It's not easy. But, you just have to struggle when you are not in the comfort zone.  Struggle is virtue.

#### Stay Connected
If you'd like to be on my mailing list and receive personal updates on upcoming books and courses, feel free to send me an email at `bobleesj@gmail.com`
<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
