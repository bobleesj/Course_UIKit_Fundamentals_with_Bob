# Send Data Design Patterns


## Introduction


## Lecture Notes


1. Delegate


2. Callback
3. NSNotification
4. Key Value Observation ()

Don't even read it. It written in Objective-C way in Swift.
```swift
class Car: NSObject {
  dynamic var miles = 0
  dynamic var name = "Turbo"
}
```

The `dynamic` keyword ensures that property access is dynamically dispatched via the Objective-C runtime, which is where the KVO logic is implemented.

 In order to make a Swift type observable it must inherit from `NSObject`, and any properties that you wish to observe need to be marked with the `dynamic` keyword:

 


```swift
class CarObserver: NSObject {

  private var kvoContext: UInt8 = 1

  private let car: Car

  init(_ car: Car) {
    self.car = car
    super.init()
    car.addObserver(self, forKeyPath: "miles",
       options: NSKeyValueObservingOptions.New, context: &kvoContext)
  }

  override func observeValueForKeyPath(keyPath: String,
       ofObject object: AnyObject, change: [NSObject : AnyObject],
       context: UnsafeMutablePointer<Void>) {
    if context == &kvoContext {
      println("Change at keyPath = \(keyPath) for \(object)")
    }
  }

  deinit {
    car.removeObserver(self, forKeyPath: "miles")
  }
}
```


Swift does not support key value observation natively. So, just use property observer. That's better.

### Problem
### Resources
### Source Code

## Conclusion





#### Stay Connected
I focus on building a long-term relationship with you. Feel free to follow on my social media for personal updates and engagement. You may see what my daily activity is like on Instagram.  

<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
