# Access Control

## Introduction
Welcome back to Lesson 4 of Part 2: Access Control. Well, You probably have seen one of the following keywords: `fileprivate`, `open`, `public`, `private`, and `internal`. You might feel overwhelmed. Let's get started.

## Lecture Notes

### Problem
I'd like to prevent you from touching my code.

### Formal Definition

> Access control restricts access to parts of your code from code in other source files and modules.

### Definition of Module
A module is a single unit of code distribution—a framework or application that is built and shipped as a single unit and that can be imported by another module with Swift’s import keyword.

Each build target (such as an app bundle or framework) in Xcode is treated as a separate module in Swift.

### 5 Levels in Access Control
Open access is the highest (least restrictive) access level and private access is the lowest (most restrictive) access level.

#### Open
`open` access and `public` access enable entities to be used within any source file from their defining module.

```swift
open class UICollectionView : UIScrollView { }
```


#### Public
Identical to `open` but entities can be subclassed only within the module where they’re defined.

```swift
public protocol UICollectionViewDelegate : UIScrollViewDelegate {   
}
```

#### Internal
Internal access enables entities to be used within any source file from their defining module, but not in any source file outside of that module.



#### File-private
File-private access restricts the use of an entity to its own defining source file. Use file-private access to hide the implementation details of a specific piece of functionality when those details are used within an entire file.

```swift
fileprivate func introduce() {
 print("Hello from the other side")
}
```

```swift
// viewcontroller.swift
override func viewDidLoad() {
 super.viewDidLoad()
 introduce() // error
}
```


#### Private
Private access restricts the use of an entity to the enclosing declaration.

```swift
// human.swift
class Human {
 private var name = "Bob"
}
Human() // Good
Human().name // Error
```


### Getters and Setters
You can give a setter a lower access level than its  getter, to restrict the read-write scope of that variable, property, or subscript. You may use `fileprivate(set)`, `private(set)` or `internal(set)`.


```swift
class Contact {
 fileprivate(set) var Number = 123456789
}

let contact = Contact()
contact.Number = 987654321
contact.Number // 987654321


class Friend {
  private(set) var name = "Bob"
}

let bob = Friend()
bob.name // "Bob"
bob.name = "Bobby" // Error
```

### Resources
[The Complete Understanding of Access Control in Swift 3](https://medium.com/ios-geek-community/the-complete-understanding-of-access-control-in-swift-3-c1c71f2add0b)

### Reference
[The Swift Programming Language: Access Control](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AccessControl.html)

### Source Code
[2101_Access Control](https://www.dropbox.com/sh/z9ifuxay205ephk/AAAY508zkN3pn3U8kBNCyuVra?dl=0)

## Conclusion
I hope by now, you've started to understand the iOS ecosystem. Access control is very important because not only you want to protect your code, but also you don't want to overwhelm your co-workers or users by showing all. In the next lesson, you are going to learn 3 most common design patterns that are used to pass data between view controllers or simply classes in iOS. See you there. 

#### Stay Connected
I focus on building a long-term relationship with you. Feel free to follow on my social media for personal updates and engagement. You may see what my daily activity is like on Instagram.  

<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
