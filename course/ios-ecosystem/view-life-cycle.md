# The View Life Cycle

## Introduction

## Problem


### The Role of Interface Builder
Interface Builder is an application that you use to graphically construct and configure your application’s windows and views. Using Interface Builder, you assemble your views and place them in a nib file, which is a resource file that stores a freeze-dried version of your views and other objects. When you load a nib file at runtime, the objects inside it are reconstituted into actual objects that your code can then manipulate programmatically.

## UIWindow
Every iOS application needs at least one window—an instance of the UIWindow class—and some may include more than one window. A window object has several responsibilities:

It contains your application’s visible content.
It plays a key role in the delivery of touch events to your views and other application objects.
It works with your application’s view controllers to facilitate orientation changes.

Create programmatically
```swift
self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
```

init(coder:)
When you create the views of your app in a Storyboard, init(coder:) is the method that gets called to instantiate your view controller and bring it to life. The contract for this method is actually defined in the NSCoding protocol, so you won’t see it in the UIViewController documentation.

When this method is called, your view will likely be displayed sometime in the near future (or the very immediate future), but at this point there’s no guarantee that it actually will be displayed. So this might be a good time to start getting things in order, but don’t too much here or you’ll be wasting processing power. In this method, you might instantiate dependencies, including subviews that you’ll add to your view programmatically. And note that init(coder:) is called only once during the life of the object, as all init methods are.

viewDidLoad()
Called after init(coder:) when the view is loaded into memory, this method is also called only once during the life of the view controller object. It’s a great place to do any view initialization or setup you didn’t do in the Storyboard. Perhaps you want to add subviews or auto layout constraints programmatically – if so, this is a great place to do either of those. Note that just because the view has been loaded into memory doesn’t necessarily mean that it’s going to be displayed soon – for that, you’ll want to look at viewWillAppear. Oh, and remember to call super.viewDidLoad() in your implementation to make sure your superclass’s viewDidLoad gets a chance to do its work – I usually call super right at the beginning of the implementation.

viewWillAppear(_:)
Always called after viewDidLoad (for obvious reasons, if you think about it), and just before the view appears on the screen to the user, viewWillAppear is called. This gives you a chance to do any last-minute view setup, kick off a network request (in another class, of course), or refresh the screen. Unlike viewDidLoad, viewWillAppear is called the first time the view is displayed as well as when the view is displayed again, so it can be called multiple times during the life of the view controller object. It’s called when the view is about to appear as a result of the user tapping the back button, closing a modal dialog, when the view controller’s tab is selected in a tab bar controller, or a variety of other reasons. Make sure to call super.viewWillAppear() at some point in the implementation—I generally do it first thing.

viewWillDisappear(_:)
Similar to viewWillAppear, this method is called just before the view disappears from the screen. And like viewWillAppear, this method can be called multiple times during the life of the view controller object. It’s called when the user navigates away from the screen—perhaps dismissing the screen, selecting another tab, tapping a button that shows a modal view, or navigating further down the navigation hierarchy. This is a great place to hide the keyboard, save state, and possibly cancel running timers or network requests. Like the other methods in the view controller lifecycle, be sure to call super at some point in viewWillDisappear.


<img src=/course/ios-ecosystem/assets/view-life-cycle.png title="The view life cycle">




### References
https://developer.apple.com/library/content/documentation/WindowsViews/Conceptual/ViewPG_iPhoneOS/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009503


## Conclusion
