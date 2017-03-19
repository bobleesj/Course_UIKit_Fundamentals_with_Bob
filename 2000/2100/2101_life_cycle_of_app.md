# The Life Cycle of an iOS App

## Introduction
Welcome to our first lesson in Part 2 of the UIKit Fundamentals with Bob. Before we start using components with the UIKit objects such images, buttons, and labels to beautifully design UIs for our apps, let's take a look what happens to your phone internally when you click on the app icon to get started.

In our previous chapter, you've learned about how delegate works. Just to recap, the delegate pattern is used to send messages and data between classes. You will now see how delegate works in the overall iOS ecosystem.  So, let's get started. So, make sure you are familiar with delegate before you decide to continue.


## Lecture Notes

### Objectives
 Learn the roles of `UIApplication` in the life cycle of an app along with `appDelegate.swift`.

### The Role of UIApplication
UIApplicationObject: The `UIApplication` object manages the event loop and other high-level app behaviors. It also reports key app transitions and some special events (such as incoming push notifications) to its delegate, which is a custom object you define.

<img src="/2000/2100/resources/2101_execution_states_for_apps.png" width=350px alt="An overview of the cycle of an app"/>

 1. **Not running:** The app has not been launched or was running but was terminated by the system.
 2. **Inactive:** The app is running in the foreground but is currently not receiving events due to phone calls or other external events.
 3. **Active:** The app is running in the foreground and is receiving events. This is the normal mode for foreground apps.
 4. **Background:** The app is in the background and executing code. Most apps enter this state briefly on their way to being suspended.
 5. **Suspended:** The app is in the background but is not executing code. The system moves apps to this state automatically and does not notify them before doing so. While suspended, an app remains in memory but does not execute any code. When a low-memory condition occurs, the system may purge suspended apps without notice to make more space for the foreground app.

### UIApplication Delegate Method
Most state transitions are accompanied by a corresponding call to the methods of your app delegate object. These methods are your chance to respond to state changes in an appropriate way. These methods are listed below, along with a summary of how you might use them. The UIApplication object is responsible for handling communication between our code and Apple system frameworks.

| Delegate Method | Function |
| --- | --- |
| `willFinishLaunchingWithOptions:` |  Called after the app has been launched and main storyboard or nib files loaded, but before the app's state restored. Your app is in the inactive state. |
| `didFinishLaunchingWithOptions:` |  This method allows you to perform any final initialization before your app is displayed to the user. |
| `applicationDidBecomeActive:` |  Lets your app know that it is about to become the foreground app. Use this method for any last minute preparation. |
| `applicationWillResignActive` | Lets you know that your app is transitioning away from being the foreground app. Use this method to put your app into a quiescent state  |
| `applicationDidEnterBackground:` | Method called when the app moves from foreground to background  |
| `applicationWillEnterForeground:` |  Method called when the app moves from background to foreground |
| `applicationWillTerminate:` | Method called when the app gets killed  |

 > For app initialization, it is highly recommended that you use this method and the `application:willFinishLaunchingWithOptions:` method and do not use the `applicationDidFinishLaunching:` method, which is intended only for apps that run on older versions of iOS. - [Apple](https://developer.apple.com/reference/uikit/uiapplicationdelegate/1622921-application?language=objc)

<img src="/2000/2100/resources/2101_launch_cycle.png" alt="The entire life cycle of an app" style="width: 500px;"/>

#### What's main()?
The UIKit written in Objective-C and comes from C language in order to start, there is `main` function and iOS is based on the Unix Operation System. You may think of it as a car key to turn on the engine of your car.

### UIApplicationMain
This function is called in the main entry point to create the application object and the application delegate and set up the event cycle

The app delegate is the standard delegate for built-in application object, it works with the UIApplication object to handle application-level events like initialization and state transitions.

The app delegate create a `UIWindow` object as well as a view controller. `UIWindow` is responsible for coordinating the presentation of one or more views on screen.

### The Role of objects in an iOS app

| Object | Function |
| --- | --- |
| `UIApplication` |  Manages the event loop. It reports incoming push notifications to its delegate object. |
| `App delegate Object` | Allows developers to add custom code at different stages of the cycle. The object should be present in every app, so it's often created during the initial setup stage. |
| `View Controller Objects` | Set, load, rotate, control and manage views and visual forms such as `UINavigation` and `UITabBar` |
| `UIWindow Object` | Coordinates the presentation of one ore more views on a screen such as x, y, height, and width. Most apps have one window |
| `View objects, control objects` | Provide the visual representation of the app's content. |


### What's State Restoration
 - Restores your app where the user left it
 - Makes your app appear as if they never terminated
 - Users seamlessly get back to where they were at

<img src="/2000/2100/resources/2101_restore_user_interface.png" alt="The complete life cylce of an app" width=600px/>


## Conclusion
So far, we've gone deep down. To recap, understand that the `UIApplication` object manages the life cycle and the delegate object allows us to put our custom code during the various stages.

In the next lesson, you will learn the fundamental structure of `viewControllers`. If you feel overwhelmed, make sure check out the lecture notes.

### References

[App Programming Guide for iOS: The App Life Cycle](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html)


[App Programming Guide for iOS: Restore UI](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/StrategiesforImplementingYourApp/StrategiesforImplementingYourApp.html)



#### Stay Connected
I focus on building a long-term relationship with you. Feel free to follow on my social media for personal updates and engagement. You may see what my daily activity is like on Instagram @[bobthedev](instagram.com/bobthedev)

<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
