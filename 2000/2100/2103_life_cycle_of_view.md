

# View Controller Structure

## Introduction

[View Controller Programming Guide for iOS (Legacy): Custom View Controllers](https://developer.apple.com/legacy/library/documentation/WindowsViews/Conceptual/ViewControllerPGforiOSLegacy/BasicViewControllers/BasicViewControllers.html#//apple_ref/doc/uid/TP40011381-CH101-SW2)

[View Controller Porgramming Guide for iOS](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/index.html#//apple_ref/doc/uid/TP40007457-CH2-SW1)

## Lecture Notes


## Understanding View Management Cycle
In a view controller object, management of the corresponding view occurs in two distinct cycles: the load and unload cycles.

The steps that occur during the load cycle are as follows:
 1. Some part of your application asks for the view in the view cont=roller's view property
 2. If the view is not in memory, the view controller calls its `loadView` method
 3. The `loadView` method does one of the following:
- If you override this method, create all necessary views and assigning a non-nil value to the view property
- If you do not override, the default implementation uses the `nibName` and `nibBundel` properties of the view controller to try to load the view from the specific nib file. If the specific nib is not found, it looks for a nib file whose name matches the name of the view controller class and loads that file, and create an empty `UIView` object and assigns it ot the `view` property.
4. The view controller calls `viewDidLoad` method to perform any additional load-time tasks.


<img src="/2000/2100/resources/2103_view_life_cycle.jpg"/>

## Create the View Programmatically
Create a root view object that is sized to fit the screen. Create any additional `UIView` objects. Add the view to a parent view using `addSubView:`.

> When you override the `loadView` method to create your views programmatically , you should not call `super`. Doing so, initiates the default view-loading behavior and is usually a waste of CPU cycles. Overriding the loadView method is required only if you intend to create your views programmatically.


ViewDidLoad: Any data that is tied to your view objects should be created or loaded in the viewDidLoad method. By the time this method is called, your view objects are guaranteed to exist and be in a known good state.

## Presenting a View Control's View
- Display the view directly by adding it to a window using the addSubview: method.
- Present the owning view controller modally using `present`
- Push the owning view controller onto the navigation stack of a navigation controller object.
- Make the owning view controller the root view controller of a tab in a tab bar interface.


 // It is a good idea o set the view's frame before adding it to a window.
   [viewController.view setFrame:[[UIScreen mainScreen] applicationFrame]];

   [window addSubview:viewController.view];
   [window makeKeyAndVisible];


### viewWillAppear
<img src="/2000/2100/resources/2103_viewdisappear_process.jpg" />

### viewDidAppear
<img src="/2000/2100/resources/2103_viewappear_process.jpg" />



## Ground Rules
- Access only the root view of a child view controller. A container should access only the root view of each child—that is, the view returned by the child’s view property. It should never access any of the child’s other views.
- Child view controllers should have minimal knowledge of their container. A child view controller should focus on its own content. If the container allows its behavior to be influenced by a child, it should use the delegation design pattern to manage those interactions.
-  Design your container using regular views first. Using regular views (instead of the views from child view controllers) gives you an opportunity to test layout constraints and animated transitions in a simplified environment. When the regular views work as expected, swap them out for the views of your child view controllers.

### Problem
### Resources


### Reference
[View Controller Programming Guide for iOS (Legacy): Custom View Controllers](https://developer.apple.com/legacy/library/documentation/WindowsViews/Conceptual/ViewControllerPGforiOSLegacy/BasicViewControllers/BasicViewControllers.html#//apple_ref/doc/uid/TP40011381-CH101-SW2)

[View Controller Porgramming Guide for iOS](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/index.html#//apple_ref/doc/uid/TP40007457-CH2-SW1)


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
