# Name


## Introduction

## Lecture Notes


## Pros
- Very strict syntax. All events to be heard are clearly defined in the delegate protocol.
- Compile time Warnings / Errors if a method is not implemented as it should be by a delegate.
- Protocol defined within the scope of the controller only.
- Very traceable, and easy to identify flow of control within an application.
- Ability to have multiple protocols defined by one controller, each with different delegates.
- No third party object required to maintain / monitor the communication process.
- Ability to receive a returned value from a called protocol method. This means that a delegate can help provide information back to a controller. 

## Cons
 - Many lines of code required to define: 1. the protocol definition, 2. the delegate property in the controller, and 3. the implementation of the delegate method definitions within the delegate itself.
 - Need to be careful to correctly set delegates to nil on object deallocation, failure to do so can cause memory crashes by calling methods on deallocated objects.
- Although possible, it can be difficult and the pattern does not really lend itself to have multiple delegates of the same protocol in a controller (telling multiple objects about the same event)



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
