# The Life Cycle of an iOS App

## Introduction
Welcome to our first lesson in Part 2 of the UIKit Fundamentals with Bob. Before we start using components with UIKit objects such images, buttons, and labels to beautifully design UI for apps, let's take a look what happens to your phone internally when you click on the app icon to get started and terminated. Since this is a course designed for intermediates, I already assume you are familiar Storyboard to design UI. 😀

In our previous chapter, you've learned about how delegate works. Just to recap, the delegate pattern is used to send messages and data. You will now see how delegate works in the overall iOS ecosystem.  So, let's get started. So, make sure you are familiar with delegate before you decide to continue.

#### Outline
 1. Show How the Cycle works within the `AppDelegate.swift` file
 2. Show the image of the simplified version of the life cycle
 3. Show the entire cycle: Describe the role of `UIApplication`

### The Life Cycle of an App
UIApplicationObject: The `UIApplication` object manages the event loop and other high-level app behaviors. It also reports key app transitions and some special events (such as incoming push notifications) to its delegate, which is a custom object you define. Use the UIApplication object as is—that is, without subclassing.

[Apple Official Documentation]: https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html

<img src="/images/2000/execution_States_for_Apps.png" alt="Drawing" title="Simplified Version of the Life Cycle" style="width: 350px;"/>

 1. **Not running:** The app has not been launched or was running but was terminated by the system.
 2. **Inactive:** The app is running in the foreground but is currently not receiving events due to phone calls or other external events.
 3. **Active:** The app is running in the foreground and is receiving events. This is the normal mode for foreground apps.
 4. **Background:** The app is in the background and executing code. Most apps enter this state briefly on their way to being suspended.
 5. **Suspended:** The app is in the background but is not executing code. The system moves apps to this state automatically and does not notify them before doing so. While suspended, an app remains in memory but does not execute any code. When a low-memory condition occurs, the system may purge suspended apps without notice to make more space for the foreground app.

### UIApplication Delegate Method
Most state transitions are accompanied by a corresponding call to the methods of your app delegate object. These methods are your chance to respond to state changes in an appropriate way. These methods are listed below, along with a summary of how you might use them.

 1. `application:willFinishLaunchingWithOptions:`—This method is your app’s first chance to execute code at launch time.

This method is called after your app has been launched and its main storyboard or nib file has been loaded, but before your app’s state has been restored. At the time this method is called, your app is in the inactive state.

 2. `application:didFinishLaunchingWithOptions:`—This method allows you to perform any final initialization before your app is displayed to the user.
 3. `applicationDidBecomeActive:`—Lets your app know that it is about to become the foreground app. Use this method for any last minute preparation.
 4. `applicationWillResignActive`:—Lets you know that your app is transitioning away from being the foreground app. Use this method to put your app into a quiescent state
 5. `applicationDidEnterBackground:`—Method called when the app moves from foreground to background
 6. `applicationWillEnterForeground:`—Method called when the app moves from background to foreground
 6. `applicationWillTerminate:`— Method called when the app gets killed

 > For app initialization, it is highly recommended that you use this method and the application:willFinishLaunchingWithOptions: method and do not use the applicationDidFinishLaunching: method, which is intended only for apps that run on older versions of iOS. - [Apple](https://developer.apple.com/reference/uikit/uiapplicationdelegate/1622921-application?language=objc)

Determining why and how an app launched is the responsibility of the launchOptions parameter. Like a userInfo dictionary,


<img src="/images/2000/Launch_Cycle.png" alt="The entire life cycle of an app" style="width: 500px;"/>

#### What's main()?
UIKit written in Objective-C and comes from C language in order to start, there is `main` function and iOS is based on Unix. It's like you have to insert your key to your car to drive.

### UIApplicationMain
This function is called in the main entry point to create the application object and the application delegate and set up the event cycle

The app delegate is the standard delegate for built-in application object, it works with the UIApplication object to handle application-level events like initialization and state transitions.

The UIApplication object is responsible for handling communication between our code and Apple system frameworks.

The app delegate create a `UIWindow` object as well as a view controller. `UIWindow` is responsible for coordinating the presentation of one or more views on screen.

Events are queued internally by the app and dispatched one-by-one to the main run loop for execution.

The UIApplication object is the first object to receive the event and make the decision about what needs to be done.


### The Role of objects in an iOS app
 1. `UIApplication:` The UIApplication object manages the event loop and other high-level app behaviors. It also reports key app transitions and some special events (such as incoming push notifications) to its delegate, which is a custom object you define. Use the UIApplication object as is—that is, without subclassing.
 2. `App delegate object:` The app delegate is the heart of your custom code. This object works in tandem with the UIApplication object to handle app initialization, state transitions, and many high-level app events. This object is also the only one guaranteed to be present in every app, so it is often used to set up the app’s initial data structures.
 3. `View Controller Objects:` It provides default functionality for loading views, presenting them, rotating them in response to device rotations, and several other standard system behaviors. UIKit and other frameworks define additional view controller classes to implement standard system interfaces such as the image picker, tab bar interface, and navigation interface.
 4. `UIWindow Object:` A UIWindow object coordinates the presentation of one or more views on a screen. Most apps have only one window, which presents content on the main screen
 5. `View objects, control objects, layout objects:` Views and controls provide the visual representation of your app's content. A view is an object that draws content in designated area and responds to events within that area. Controls are a specialized type of view responsible for implementing familiar interface objects such as buttons, text fields, and toggle switches.

### What's State Restoration?
 - Restores your app where the user left it
 - Makes your app appear as if they never terminated
 - Users seamlessly get back to where they were at

<img src="/2000/2100/resources/restore_user_interface.png" alt="Restore user interface cycle" width=500px/>


## Conclusion
In this lesson, you've learned what happens internally when you launch your app. You've also learned how delegate is such an important design pattern.

In out next lessons, you are going to learn what viewDidLoad truly means in iOS, where it happens during the life cycle. Stay tuned. For more detailed notes, make sure visit the lecture note for this lesson.

### Resources

[App Programming Guide for iOS: The App Life Cycle](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html)


[App Programming Guide for iOS: Restore UI](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/StrategiesforImplementingYourApp/StrategiesforImplementingYourApp.html)




#### Stay Connected
I focus on building a long-term relationship with you. Feel free to follow on my social media for personal updates and engagement. You may see what my daily activity is like on Instagram.  

<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
