# Guard Statement
## Introduction
Super welcome back. We are at lesson 3 of Part 1 of Swift fundamentals with Bob. First of all, let me share with you a story of mine first. When I learned Swift as my first programming language,  I understood  an `else-if` statement. It wasn't a big deal. For example, if something is true, you run this block, if not, else, you run that. However, a `guard` statement confused the heck out of me. I don't know why. Maybe some of you guys feel the same way as I did. Don't worry. I'm here for you today. You will understand that a `guard statement` is just another for you to write an `else-if` statement. But a guard statement provides a feeling zen which means clarity, emptiness, and lots of cloud and space. Well, let's find out why.

## Lecture Notes

### Problem
Is there any better way to write an else-if statement? How do you safely unwrap many optionals?

### Typical else-if
Without knowing guard statements, you used a long else-if statement to handle an error message block by calling `else`.

```swift
func checkDrinkingAge() {

  let canDrink = true

  if canDrink {
    print("You may enter")
    // More
    // More Code
    // More Code

  } else {
    // More Code
    // More Code
    // More Code
    print("Let me take you to the jail")
  }
}
```

### Issues with else-if
1.  Nested brackets
2.  Read every line to spot error

### Guard Statement
It provides early exit and fewer brackets.

```swift
func checkDrinkProgram() {
  let iCanDrink = true

  guard iCanDrink else {
    // if iCanDrink == false, run this block
    print("You can't drink")
    return
  }

  print("You may drink")
  // You may move on
  // Come on.
  // You may leave
  // You don't need to read this.
  // Only one bracket on the bottom: feeling zen.
}
```


### Unwrap Optionals with else-if

```swift
// Unwrap using else-if

var publicName: String? = "Bob"
var publicPhoto: String? = "URL"
var publicAge: Int? = 21

// If I find "nil" in any of these variables, don't do anything

func unwrap() {
  if let name = publicName, let photo = publicPhoto, let age = publicAge {
         print("Your name is \(name). I see your face right here, \(photo), you are \(age)")
  } else {
    print("Something is missing")
    // Animation Logic
    // Networking
  }

```

### Unwrap Optionals with Guard
A guard statement is not only useful for replacing a conditional statement, but also used as a way to safely/implicitly unwrap optionals.

```swift
func safetlyUnwrapUsingGuard() {

  guard let name = publicName, let photo = publicPhoto, let age = publicAge else {
    //  If  one or more optionals contain nil
    print("Something is missing")
    return
  }

  // All optionals contain non-nil
  print("Your name is \(name). I see your, \(photo). You are \(age).")
  // Animation Logic
  // Networking
  // More Code, but still zen
}
```

### Source Code
[1103_Guard Statement](https://www.dropbox.com/sh/locish5028pi9vh/AAD2ZnHDhOHdy8ArFspUO219a?dl=0)

### Resources
[The Complete Swift 3 Tutorial with Bob: Guard Statement](https://www.youtube.com/watch?v=oeUYGNLqqqg)

## Conclusion
Boom, What's going on? How was the lesson just now? I hope you understand the power of using a `guard` statement that it provides an early exit and you don't have to read all the way to the bottom. You are using a `guard` statement not because just to please yourself, but also for the sake of your teammate's hair so it doesn't turn grey when he/she is reading your code. Okay, great. In next our lesson, we are going to learn another `!` and `?` for type casting which allows you to convert types. Let's find out!

#### Stay Connected
If you'd like to be on my mailing list and receive personal updates on upcoming books and courses, feel free to send me an email at `bobleesj@gmail.com`
<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
