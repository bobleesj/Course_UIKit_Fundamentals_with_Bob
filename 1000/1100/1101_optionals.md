# Optionals

## Introduction
Welcome to lesson 1 of Swift Fundamentals with Bob. When I first started programming in Swift just like many of you, I took courses from Udemy, Treehouse, Lynda, I bought books and whatever resources I could acquire to learn iOS programming by myself.

Until for another month, I never really understood what those `?` and `!` stood for. Xcode kept telling me what to do on the left side, you know what I'm talking. I got frustrated. It seemed like no courses gave me clear reasons how to use optionals, and why Swift engineers have implemented such feature that is so unique compared to other programming languages. Well, today, you are going to learn why fundamentally we use optionals and how to use it with me, Bob the Developer.

## Lecture Notes

### Problem
Why did Swift engineers implement optionals?

### Implicit and Explicit Type

#### Rule
 1. Every variable type must be defined (Implicit/Explicit)
 2. The Type is inferred based on the value

```swift
// String
let name: String = "Bob"          // Explicit
let newName = "Bob the Developer" // Implicit

// Numbers
let myAge: Int = 20               // Explicit
let mySisterAge = 14              // Implicit
let myGPA: Double = 3.54          // Explicit
```

### Fetching Profile Picture
When you fetch a profile picture from Facebook, it may return no value or `nil`.

```swift
// If could return "URL" or "nothing"
// Successful
let myProfileImageURL: String = "https//facebook.com/bobthedeveloper"
```

### Introduction to Optionals
Optional type allows storing `nil`.

```swift
let myName: String? = nil
let myNewName: String? = nil

print(myName)
print(myNewName)

let bobAge: Int? = nil
let robAge: Int? = 123
let danAge: Int? = 3
```

### Optionals Rules
1. Optionals/Normal Types do not interact with each other
2. Must Convert Optionals to Normal Type for usage. The process is also known as unwrapping.

```swift
// robAge + danAge
// Error
```

### Optionals Unwrapping
There are two ways to convert/unwrap Optionals to Normal Types

1. Forced unwrapping
2. Implicit unwrapping

#### Forced Unwrapping
Forced Unwrapping should be avoided since it causes a crash if an optional contains `nil`. To convert, add `!`.

```swift
let profileImageFromFacebook: String? = "ImageURL..."
print(profileImageFromFacebook) // Optional

var image = profileImageFromFacebook! // String? converted to String

print(image) // Normal Type
print(profileImageFromFacebook!) // Normal Type

```
> Again, forced Unwrapping is not recommended as shown below.

```swift
let newRobAge = robAge!
let newDanAge = danAge!

newRobAge + newDanAge // Good
```

Bad things happen when you try to force unwrap an optional type whose value contains `nil`.

```swift
let bobAge: Int? = nil
// let newBobAge = bobAge! // Error
```

> You can't store nil to normal type in Swift. It violates the rule mentioned above.

#### Implicit Unwrapping
```swift
let profileImageFromFacebook: String? = "Bob's pretty image"

if let image = profileImageFromFacebook {
  print(image)
}
```


### Source Code
[1101_Optionals](https://www.dropbox.com/sh/vcc6ydca4i7j9uk/AADTQUM6jv4iHFeQbBXRU_Pua?dl=0)

### Resources
Feel free to check if you are confused.

[The Complete Swift 3 Tutorial with Bob: Lesson12_Optionals](https://www.youtube.com/watch?v=nTvngVHWe-M)


## Conclusion
Boom! Now you finally understand the why Swift engineering have implemented optionals and how to use them. To be more specific, you've learned two fundamental concepts in optionals. The rule number one is that every variable type even if it's optionals type has to be defined whether explicitly or implicitly. Second, there are ways to unwrap optionals to normal values. Force using the ! mark and safe using if let. In our next lesson, you are learning how to apply optionals when you create an object and play around with its properties and methods. Let's go.

#### Stay Connected
If you'd like to be on my mailing list and receive personal updates on upcoming books and courses, feel free to send me an email at `bobleesj@gmail.com`
<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
