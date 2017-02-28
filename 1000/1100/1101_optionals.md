# Optionals

## Introduction
Welcome to lesson 1 of Swift Fundamentals with Bob. When I first started programming in Swift just like many of you, I took courses from Udemy, Treehouse, Lynda, I bought books and whatever resources I could acquire to learn iOS programming by myself.

Until for another month, I never really understood what those `?` and `!` stood for. Xcode kept telling me what to do on the left side, you know what I'm talking. I got frustrated. It seemed like no courses gave me clear reasons how to use optionals, and why Swift engineers have implemented such feature that is so unique compared to other programming languages. Well, today, you are going to learn why fundamentally we use optionals and how to use it with me, Bob the Developer.

## Lecture Notes

### Implicit vs Explicit
```swift
// String
let name: String = "Bob"          // Explicit
let newName = "Bob the Developer" // Implicit

// Numbers
let myAge: Int = 20               // Explicit
let mySisterAge = 14              // Implicit
let myGPA: Double = 3.54          // Explicit

// Rule: Every variable with normal type must have value associated
let hi = "123"

// But why?
```

### Fetching Profile Picture
```swift
// If could return "URL" or "nothing"
// Successful
let myProfileImageURL: String = "https//facebook.com/bobthedeveloper"
```

### Introduction to Optionals
```swift
let myName: String? = nil
let myNewName: String? = nil

print(myName)
print(myNewName)

let bobAge: Int? = nil
let robAge: Int? = 123
let danAge: Int? = 3


// robAge + danAge
// Error
```

### Optionals Rules
1. Optionals/Normal Types do not interact with each other
2. Must Convert Optionals to Normal Type for usage

### Optionals Unwrapping
Two ways to convert/unwrap Optionals to Normal Types
1. Forced unwrapping
2. Implicit unwrapping

#### Forced Unwrapping
```swift
let profileImageFromFacebook: String? = "ImageURL..."
print(profileImageFromFacebook)

var image: String = ""

image = profileImageFromFacebook! // String? --> String

print(image)
print(profileImageFromFacebook!)

```
> Forced Unwrapping is not recommended

```swift
let myFacebookName: String? = "Bob Lee"

var myCoolName: String = ""

// myCoolName = myFacebookName! // nil
```


#### Implicit Unwrapping
```swift
if let myFacebookName = myFacebookName {
  print("Hi, my name is \(myFacebookName)")
}
```

### Source Code
[Optionals](https://www.dropbox.com/sh/vcc6ydca4i7j9uk/AADTQUM6jv4iHFeQbBXRU_Pua?dl=0)

### Resources
[The Complete Swift 3 Tutorial with Bob: Lesson12_Optionals](https://www.youtube.com/watch?v=nTvngVHWe-M)

[The Complete Guide to Understanding Swift Optionals by Matteo Manferdini](http://matteomanferdini.com/wp-content/uploads/2015/11/The-Complete-Guide-to-Understanding-Swift-Optionals.pdf)

## Conclusion
Boom! Now you finally understand the why Swift engineering have implemented optionals and how to use them. To be more specific, you've learned two fundamental concepts in optionals. The rule number one is that every variable type even if it's optionals type has to be defined whether explicitly or implicitly. Second, there are ways to unwrap optionals to normal values. Force using the ! mark and safe using if let. In our next lesson, you are learning how to apply optionals when you create an object and play around with its properties and methods. Let's go.

#### Bob the Developer
<p>
<a href="https://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bob_the_developer
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
