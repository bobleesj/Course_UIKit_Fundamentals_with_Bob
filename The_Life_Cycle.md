
# The Life Cycle of an iOS App

## Outline

### Reference
[Apple Official Documentation]

## The Life Cycle of an App

UIApplicationObject: The `UIApplication` object manages the event loop and other high-level app behaviors. It also reports key app transitions and some special events (such as incoming push notifications) to its delegate, which is a custom object you define. Use the UIApplication object as is—that is, without subclassing.


[Apple Official Documentation]: https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html



<img src="images/execution_States_for_Apps.png" alt="Drawing" title="Hello, friend" style="width: 300px;"/>


hello

Not running
The app has not been launched or was running but was terminated by the system.
Inactive
The app is running in the foreground but is currently not receiving events. (It may be executing other code though.) An app usually stays in this state only briefly as it transitions to a different state.
Active
The app is running in the foreground and is receiving events. This is the normal mode for foreground apps.
Background
The app is in the background and executing code. Most apps enter this state briefly on their way to being suspended. However, an app that requests extra execution time may remain in this state for a period of time. In addition, an app being launched directly into the background enters this state instead of the inactive state. For information about how to execute code while in the background, see Background Execution.
Suspended
The app is in the background but is not executing code. The system moves apps to this state automatically and does not notify them before doing so. While suspended, an app remains in memory but does not execute any code.
When a low-memory condition occurs, the system may purge suspended apps without notice to make more space for the foreground app.



Most state transitions are accompanied by a corresponding call to the methods of your app delegate object. These methods are your chance to respond to state changes in an appropriate way. These methods are listed below, along with a summary of how you might use them.

application:willFinishLaunchingWithOptions:—This method is your app’s first chance to execute code at launch time.
application:didFinishLaunchingWithOptions:—This method allows you to perform any final initialization before your app is displayed to the user.
applicationDidBecomeActive:—Lets your app know that it is about to become the foreground app. Use this method for any last minute preparation.
applicationWillResignActive:—Lets you know that your app is transitioning away from being the foreground app. Use this method to put your app into a quiescent state.
applicationDidEnterBackground:—Lets you know that your app is now running in the background and may be suspended at any time.
applicationWillEnterForeground:—Lets you know that your app is moving out of the background and back into the foreground, but that it is not yet active.
applicationWillTerminate:—Lets you know that your app is being terminated. This method is not called if your app is suspended.

[UIViewController]
[UIViewController]: https://developer.apple.com/reference/uikit/uiviewcontroller


UIViewController is responsible for
View Management
Each view controller manages a view hierarchy, the root view of which is stored in the view property of this class. The root view acts primarily as a container for the rest of the view hierarchy. The size and position of the root view is determined by the object that owns it, which is either a parent view controller or the app’s window. The view controller that is owned by the window is the app’s root view controller and its view is sized to fill the window.


Specify the view controller and its views in your app’s Storyboard. Storyboards are the preferred way to specify your views. With a storyboard, you specify the views and their connections to the view controller. You also specify the relationships and segues between your view controllers, which makes it easier to see and modify your app's behavior.

To load a view controller from a storyboard, call the instantiateViewController(withIdentifier:) method of the appropriate UIStoryboard object. The storyboard object creates the view controller and returns it to your code.


When the visibility of its views changes, a view controller automatically calls its own methods so that subclasses can respond to the change

<img src="images/Valid_State_Transitions.png" alt="Drawing Hello, I'm Bob. Nice meeting you" style="width: 300px;"/>




Memory Management with
`didReceiveMemoryWarning()`
