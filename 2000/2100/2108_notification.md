# NSNotification


## Introduction

## Lecture Notes


In iOS applications there is a concept of a “Notification Center”. It is a singleton object that allows for objects to be notified of events occurring. It allows us to satisfy the goal of communicating between a controller and an arbitrary object with a low level of coupling.



Pros
 - Easy to implement, with not many lines of code.
 - Can easily have multiple objects reacting to the same notification being posted.
 - Controller can pass in a context (dictionary) object with custom information (userInfo) related to the notification being posted.


Cons
 - No compile time to checks to ensure that notifications are correctly handled by observers.
 - Required to un-register with the notification center if your previously registered object is deallocated.
 - Not very traceable. Attempting to debug issues related to application flow and control can be very difficult.
 - Third party object required to manage the link between controllers and observer objects.
 - Notification Names, and UserInfo dictionary keys need to be known by both the observers and the controllers. If these are not defined in a common place, they can very easily become out of sync.
 - No ability for the controller to get any information back from an observer after a notification is posted.



## Notification vs Delegate

We lose a good deal of clarity when heavy usage of NSNotificationCenter occurs in an application. There may be appropriate times to use NSNotificationCenter in your app. Keep in mind that it becomes much more difficult to sort out various interactions when more and more listener instances are responding a notification. Trying to reason about how the system as a whole arrived at its current state isn’t as easy when NSNotificationCenter enters the picture. Other developers with less knowledge of the app as a whole would suffer from this loss of clarity.






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
