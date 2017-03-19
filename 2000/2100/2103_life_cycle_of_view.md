# The View Life Cycle

## Introduction
Welcome to Lesson 3 of Part 2: The Life Cycle of a View. Let's find how views are created via storyboards or programmatically.

## Lecture Notes

### Understanding View Management Cycle
In a view controller object, management of view occurs in two cycles: the **load** and **unload cycles**.

The steps that occur during the **load cycle** are as follows:
 1. Your application asks for the view in the view controller's view property.
 2. If the view is not in memory, the view controller calls its `loadView` method
 3. The `loadView` method does one of the following:
- If you override this method, create all necessary views and assigning a non-nil value to the view property
- If you do not override, the default implementation uses the `nibName` and `nibBundle` properties of the view controller to try to load the view from the specific nib file. If the specific nib is not found, it looks for a nib file whose name matches the name of the view controller class and loads that file, and create an empty `UIView` object and assigns it to the `view` property.
4. The view controller calls `viewDidLoad` method to perform any additional load-time tasks.

`ViewDidLoad:` Any data that is tied to your view objects should be created or loaded in the viewDidLoad method. By the time this method is called, your view objects are guaranteed to exist and be in a known good state.


<img src="/2000/2100/resources/2103_view_life_cycle.jpg" alt="View load cycle"/>

### Create the View Programmatically
Create a root view object that is sized to fit the screen. Create any additional `UIView` objects. Add the view to a parent view using `addSubView:`.

> When you override the `loadView` method to create your views programmatically , you should not call `super`. Doing so, initiates the default view-loading behavior and is usually a waste of CPU cycles. Overriding the loadView method is required only if you intend to create your views programmatically.

#### viewWillAppear
 - The method is a notification to the view controller that the view is about to become visible.
 - `viewwillappear` method is called as and when the view controller's view is added to the window
 - anytime addSubView is called, `viewWillAppear` also called again.

<img src="/2000/2100/resources/2103_viewappear_process.jpg" alt="viewWillAppear Process"/>

#### viewDidAppear
<img src="/2000/2100/resources/2103_viewdisappear_process.jpg"  alt="viewDisappear Process"/>

### View Controller Design Tips

#### Container View Controllers to Views  
A container view controller should access only the root view of each child. It should never access any of the child’s other views.

#### Child View Controllers to Container View Controller
 Child view controllers should have minimal knowledge of their container. A child view controller should focus on its own content. If the container allows its behavior to be influenced by a child, it should use the delegation design pattern to manage those interactions.

### Reference
[View Controller Programming Guide for iOS: Custom View (Legacy) Controllers](https://developer.apple.com/legacy/library/documentation/WindowsViews/Conceptual/ViewControllerPGforiOSLegacy/BasicViewControllers/BasicViewControllers.html#//apple_ref/doc/uid/TP40011381-CH101-SW2)

[View Controller Programming Guide for iOS](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/index.html#//apple_ref/doc/uid/TP40007457-CH2-SW1)

## Conclusion

#### Stay Connected
I focus on building a long-term relationship. Feel free to follow on my social media for personal updates and engagement. You may see what my daily activity is like on Instagram.  

<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
