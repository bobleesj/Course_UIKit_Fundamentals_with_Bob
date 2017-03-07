# Generics

## Introduction
Welcome back to Lesson 6 of Part 1 Swift Fundamentals with Bob. When you think of the word, "generic", what makes you think? Well, I'm sure you've thought you want to write code that can work with many other types. Haha, I know you are super confused, I will walk you through. But remember, the number goal is to write reusable code so that we do not repeat ourself.

## Lecture Notes

### Problem
I feel like I'm repeating myself...

### Your Past
Let us reflect on how you access value before you encounter generics

```swift
let highSchoolGPA = [2.8, 3.2, 3.5, 3.8, 3.5]
let favoritePeople = ["Elon Musk", "Steve Jobs", "Kevin O'leary"]
let favoriteNumbers = [3, 20]
```

Worst way to access elements
```swift
highSchoolGPA[0]
highSchoolGPA[1]
highSchoolGPA[2]
```

#### Loop and Print
You create a function that loops through an element.
```swift
func printDoubleElement(array: [Double]) {
  for GPA in array {
    print(GPA)
  }
}

func printStringElement(array: [String]) {
  for person in array {
    print("I love \(person)")
  }
}

func printNumberElement(array: [Int]) {
  for number in array {
    print("I like \(number)")
  }
}
```
> Needlessly many functions. It goes against the DRY principle. Don't Repeat Yourself.

### Introducing Generics
You may create a function that may pass regardless of type  

```swift
func genericFunction<anything>(value: anything) {
  print(value)
}

func genericFunctions<WHATEVER>(value: WHATEVER) {
  print(value)
}
```

You may pass any type of value. Swift sets the type of `value` as the type of the input.

```swift
genericFunction(value: "Bob")  // value is String
genericFunction(value: true)    // value is Bool
```

#### Generic Loop
Let us apply to a function that loops through an array.

```swift
func printElement<T>(array: [T]) {
  for element in array {
    print(element)
  }
}
```
Call the function

```swift
printElement(array: highSchoolGPA)
printElement(array: favoritePeople)
```

> Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements that you define.

#### Non-Generic Struct
```swift
struct Family {
  var members = [String]()

  mutating func push(member: String) {
    members.append(member)
  }
}
```

#### Non-Generic Instance
```swift
var myFam = Family()
myFam.push(member: "Bob")
myFam.members
```

### Generic Struct
You may create a generic struct.

```swift
struct genericFam<T> {
  var members = [T]()

  mutating func push(member: T) {
    members.append(member)
  }
}
```

#### Create Object Explicitly
```swift

// Generic whose type is String
var myGenericFamily = genericFam<String>()
myGenericFamily.push(member: "Bobby")

// Generic whose type is Int
var genericFamily = genericFam<Int>()
genericFamily.push(member: 123)
```
#### Create Object Implicitly
Struct type inferred based on the property type.

```swift
let myHappyFamily = genericFam(members: [1, 2, 3, 4, 5])  // struct is now Int type
```

### Generic Extension
Grab the first value
```swift
extension genericFam {
  var firstElement: T? {
    if members.isEmpty {
      return nil
    } else {
      return members[0]
    }
  }
}

let geekFamilyMember = genericFam(members: ["Bob", "Bobby"])
let firstElement = geekFamilyMember.firstElement
```

### Type Constraint
You may limit type you interact with

#### Create Class
```swift
class LOL {}
class BabyLol: LOL {}
```
#### Create Function with Constraint
Create a function that only takes an input whose type is `LOL`
```swift
func addClassOnly<T: LOL>(array: [T]) {}

// addClassOnly(array: [1, 2, 3, 5, 6, ])
// Error

addClassOnly(array: [LOL(), LOL(), LOL()])
addClassOnly(array: [LOL(), LOL(), LOL(), BabyLol()]) // Automatically Upcasted
```

### Resources
[The Complete Swift 3 Tutorial with Bob: Extension (YouTube)](https://www.youtube.com/watch?v=4pPtLjkF0HE)

[Intro to Generics in Swift with Bob (Blog)](https://medium.com/ios-geek-community/intro-to-generics-in-swift-with-bob-df58118a5001#.fkmmjqnwd)

### Source Code
[1106_Generics](https://www.dropbox.com/sh/yln3s9r0fpnhlhm/AAD_0kollYRBkc82qFUpe_0va?dl=0)


## Conclusion
That's it! Generics are such a powerful tool to the point the Swift library is, in fact, created with generic code, not all , but many. To recap, you've learned how to make a generic function by putting a diamond sign on the right. You've also learned how to create generic struct as well as how to put a type constraint. You've learned a lot. I'm very proud of you. You might not find generics as useful in this course, but when you start learning practical protocol oriented programming, functional programming, and rx reactive which is going to my next upcoming course, you will learn how generics dominate everywhere. Use your imagination.


#### Stay Connected
I focus on building a long-term relationship with you. Feel free to follow on my social media for personal updates and engagement. You may see what my daily activity is like on Instagram.  

<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
