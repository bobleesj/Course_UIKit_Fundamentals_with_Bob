# Access Control

## Lecture Notes

Access control restricts access to parts of your code from code in other source files and modules.



A module is a single unit of code distribution—a framework or application that is built and shipped as a single unit and that can be imported by another module with Swift’s import keyword.

Each build target (such as an app bundle or framework) in Xcode is treated as a separate module in Swift.


Open access and public access enable entities to be used within any source file from their defining module, and also in a source file from another module that imports the defining module. You typically use open or public access when specifying the public interface to a framework. The difference between open and public access is described below.

Internal access enables entities to be used within any source file from their defining module, but not in any source file outside of that module. You typically use internal access when defining an app’s or a framework’s internal structure.

File-private access restricts the use of an entity to its own defining source file. Use file-private access to hide the implementation details of a specific piece of functionality when those details are used within an entire file.

Private access restricts the use of an entity to the enclosing declaration. Use private access to hide the implementation details of a specific piece of functionality when those details are used only within a single declaration.


Open access is the highest (least restrictive) access level and private access is the lowest (most restrictive) access level.

Classes with public access, or any more restrictive access level, can be subclassed only within the module where they’re defined.


Class members with public access, or any more restrictive access level, can be overridden by subclasses only within the module where they’re defined.

Open classes can be subclassed within the module where they’re defined, and within any module that imports the module where they’re defined.


Open class members can be overridden by subclasses within the module where they’re defined, and within any module that imports the module where they’re defined.

### Getters and Setters
You can give a setter a lower access level than its corresponding getter, to restrict the read-write scope of that variable, property, or subscript. You assign a lower access level by writing `fileprivate(set)`, `private(set)` or `internal(set)`.


```swift
// Readable throughout the module, but only writeable from within this file.
	private(set) var UUID: NSUUID
```


### Problem
### Resources
[The Complete Understanding of Access Control in Swift 3](https://medium.com/ios-geek-community/the-complete-understanding-of-access-control-in-swift-3-c1c71f2add0b)


### Reference
[The Swift Programming Language: Access Control](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AccessControl.html)


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
