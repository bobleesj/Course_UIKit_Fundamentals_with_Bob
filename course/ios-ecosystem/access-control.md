# Access Control

## Introduction



## Problem
Prevent others from touching my code

### Resources

```swift
import UIKit
class BobController: UIViewController {}
```

## Learn how to create framework
 - Create open source project 

## Open
 - access and able to override within different module

## Public
 - access but not able to override within different module

## Internal
 - Access and override within the same module only

## File Private
 - Access and override within the same file

```swift
// random.swift
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


## Private
 - Access and override within the scope

```swift
// human.swift
class Human {
 private var name = "Bob"
}
Human() // Good
Human().name // Error
```




### References

## Conclusion
