# The App Life Cycle

## Introduction

## Problem
What happens when the user touches the app icon

## Prerequisite
You need to know what delegate is. If not, this isn't the right lesson for you. If not, you may visit go to Chapter 2 and learn about delegate and data source or refer to this article.

## The First Step
When the user touches the app icon, the `main` function calls `UIApplicationMain` function that initializes the `UIApplication`object and its delegate called, `AppDelegate`.  

```swift
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
```

## The role of objects in an iOS app
| Object | Description |
| --- | --- |
| `UIApplication` object | The `UIApplication` object manages the event loop and other higher-level/automatic app behaviors. |
| App delegate object | It receives information from the `UIApplication` and allow developers to customize code |


## The Event Cycle

<img src=/course/ios-ecosystem/assets/figure1.1-ios-state-change.png width=400px title="Figure 1.1 The foreground and background cycle">

| State | Description |
| --- | --- |
| Not running |  The app is not running. |
| Inactive |  The app is running in the foreground, but not receiving events. An iOS app can be placed into an inactive state, for example, when a call or SMS message is received. |
| Active | The app is running in the foreground, and receiving events. Transitional state. |
| Background | The app is running in the background, and executing code. |
| Suspended |  The app is in the background, but no code is being executed. App is still in memory |


### App Delegate Methods
The `UIApplication` object calls methods and notifies the `AppDelegate` when the app goes through the cycle.

| Method | Description |
| --- | --- |
| `application:willFinishLaunchingWithOptions` | This method is your app’s first chance to execute code at launch time. |
| `application:didFinishLaunchingWithOptions`| This method allows you to perform any final initialization before your app is displayed to the user. |
| `applicationDidBecomeActive` | The app has entered the foreground app. Use this method for any last minute preparation. |
| `applicationWillResignActive` | The app is transitioning away from being the foreground app. |
| `applicationDidEnterBackground` | The app runs in the background and may be suspended at any time. |
| `applicationWillEnterForeground` | The app moves out of the background and back into the foreground, but that it is not yet active. |
| `applicationWillTerminate` | The app is being terminated. This method is not called if your app is suspended. |


## The Full Life Cycle
<img src=/course/ios-ecosystem/assets/figure1.2-complete-launch-cycle.png width=600px title="Figure 1.2 The complete app cycle">


## Application Launch Options
When your app is launched into the background, launching into the background, the system still loads your app’s user interface files but it does not display the app’s window.

To determine whether your app is launching into the foreground or background, check the `applicationState` property of the shared UIApplication object in your

`application:willFinishLaunchingWithOptions:` or `application:didFinishLaunchingWithOptions:` delegate method.

When the app is launched into the foreground, this property contains the value `UIApplicationStateInactive`. When the app is launched into the background, the property contains the value `UIApplicationStateBackground` instead.


## App Programming Guide

### What do Do When Your App Is Launched
The `application:willFinishLaunchingWithOptions:` and `application:didFinishLaunchingWithOptions:` methods should always be as lightweight as possible to reduce your app’s launch time. App should launch less than 5 seconds. If not, the system kills itself.

### What to Do When Your App Is Interrupted Temporarily
Save data and any relevant state information. Stop timers and other periodic tasks such as movie playing. Stop any running metadata queries. Enter into a pause state if your app is a game. However, you may still do light networking.

### What to Do When Your App Enters the Background
When your `applicationDidEnterBackground:` method returns, the system takes a picture of your app’s user interface and uses the resulting image for transition animations.

If any views in your interface contain sensitive information, you should hide or modify those views before the `applicationDidEnterBackground:` method returns.

Free up memory as needed. Release any cached data that you do not need and do any simple cleanup that might reduce your app’s memory footprint.

Apps with large memory footprints are the first to be terminated by the system, so release image resources, data caches, and any other objects that you no longer need.

Your app delegate’s `applicationDidEnterBackground` method has approximately 5 seconds to finish any tasks and return. In practice, this method should return as quickly as possible.

If the method does not return before time runs out, your app is killed and purged from memory.

<img src=/course/ios-ecosystem/assets/figure1.3-app-suspension.png width=600px title="Figure 1.3 The app suspension cycle">

### Source Code


### Resources
[API Reference: UIApplicationMain](https://developer.apple.com/reference/uikit/1622933-uiapplicationmain)

### References
[App Programming Guide for iOS: Expected App Resources](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGyyuide/ExpectedAppBehaviors/ExpectedAppBehaviors.html#//apple_ref/doc/uid/TP40007072-CH3-SW2)

[App Programming Guide for iOS: The App Life Cycle](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html)

http://www.codingexplorer.com/execution-states-swift-ios-app/

## Conclusion
