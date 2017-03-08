# View Controller Structure


## Introduction

## Lecture Notes


https://developer.apple.com/legacy/library/documentation/WindowsViews/Conceptual/ViewControllerPGforiOSLegacy/BasicViewControllers/BasicViewControllers.html#//apple_ref/doc/uid/TP40011381-CH101-SW2

https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/index.html#//apple_ref/doc/uid/TP40007457-CH2-SW1

## Understanding View Management Cycle
In a view controller object, management of the corresponding view occurs in two distinct cycles: the load and unload cycles.

The steps that occur during the load cycle are as follows:
 1. Some part of your application asks for the view in the view cont=roller's view property
 2. If the view is not in memory, the view controller calls its `loadView` method
 3. The `loadView` method does one of the following:
  - If you override this method, create all necessary views and assigning a non-nil value to the view property
  - If you do not override, the default implementation uses the `nibName` and `nibBundel` properties of the view controller to try to load the view from the specific nib file. If the specific nib is not found, it looks for a nib file whose name matches the name of the view controller class and loads that file, and create an empty `UIView` object and assigns it ot the `view` property.
 4. The view controller calls `viewDidLoad` method to perform any additional load-time tasks.


<div align="center">
<img src="/Content/01_Swift_3/resources/view_loading_cycle.jpg" />
</div>

## Create the View Programatically
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
   <div align="center">
   <img src="/Content/01_Swift_3/resources/viewappear_process.jpg" />
   </div>


### viewDidAppear

   <div align="center">
   <img src="/Content/01_Swift_3/resources/viewdisappear_process.jpg" />
   </div>


## Ground Rules
  - Access only the root view of a child view controller. A container should access only the root view of each child—that is, the view returned by the child’s view property. It should never access any of the child’s other views.
  - Child view controllers should have minimal knowledge of their container. A child view controller should focus on its own content. If the container allows its behavior to be influenced by a child, it should use the delegation design pattern to manage those interactions.
-  Design your container using regular views first. Using regular views (instead of the views from child view controllers) gives you an opportunity to test layout constraints and animated transitions in a simplified environment. When the regular views work as expected, swap them out for the views of your child view controllers.


# View Controller Programming Guide for iOS


## The Role of View Controllers
<img src=/Content/01_Swift_3/resources/View_Controller_Images.png/ alt="Relationship between a view controller and its views" width=600px>

> It is common practice to use outlets to access other views in your view controller’s view hierarchy. Because a view controller manages the content of all its views, outlets let you store references to the views that you need. The outlets themselves are connected to the actual view objects automatically when the views are loaded from the storyboard.

### User Interactions
View controllers are responder objects and are capable of handling events that come down the responder chain. However, view controllers rarely handle touch events directly. Instead, views usually handle their own touch events and report the results to a method of an associated delegate or target object.

Most events in a view controllers are handled using delegate or action methods.


### Resource Management
A view controller assumes responsibility for its views and objects. For example, The `UIViewController` class can get rid of views and UIKit objects. When the available space is low, UIKit asks apps to free up any resources by calling `didReceiveMemoryWarning`.

## The View Controller Hierarchy

### The Root View Controller
Every window has exactly one root view controller. `UIWindow` has no visible content of its own. When you use storyboards to configure your view controllers, UIKit sets the value of that property automatically  at launch time. For windows you create programmatically, you must set the root view controller yourself.

<img src=/Content/01_Swift_3/resources/The_root_view_controller.png/ alt="The root view controller" width=600px>


### Container View Controllers
A container view controller is able to keep more than one `UIViewController` objects into an array. Examples are `UINavigationController`, `UISplitViewController`, and `UIPageViewController`

<img src=/Content/01_Swift_3/resources/Container_Viewcontroller.png/ alt="Relationship between a view controller and its views" width=600px>

### Design Tips
Before you decide to create your custom view controllers, check whether the system has already provided some. It not only saves time but also provides a consistent experience for the user.

`UIImagePickerController`, taking videos and photos, alerts, managing files on iCloud, Address Book, MediaPlayer, EventKit, Message UI, AVFoundation.

### Handling User Interactions
 - View controllers define action methods for handling higher-level events such as Gesture recognizers
 - View controllers observe notifications sent by the system or other objects
 - View controllers act as a data source or delegate for another object.

 ### Displaying Your Views at Runtime with Storyboards
  1. Instantiates views using the information in your storyboard file
  2. Connects all outlets and actions
  3. Assigns the root view to the view controller's view property
  4. Calls the view controller's `awakeFromNib` method
  5. Call the view controller's `viewDidLoad` method.


## Implementing a Container View Controller
Container view controllers are a way to combine the content from multiple view controllers into a single user interface.
an

### Navigation View Controller
<img src=/Content/01_Swift_3/resources/Navigation_Controller.png/>

### Split View Controller
<img src=/Content/01_Swift_3/resources/Split_Viewcontroller.png/>

### Adding  Child View Controller to Content View Controller
 1. Call the `addChildViewController:` method of your container view controller. This method tells UIKit that your container view controller is managing the view of the child view controller.
 2. Add the child's root view to your container's view hierarchy
 3. Add any constraints for managing the size and position of the child's root view
 4. Call the `didMoveToParentViewController:` method of the child view controller

 ```swift
 func displayContentController(_ content: UIViewController) {
    self.addChildViewController(content)
    content.view.frame = self.frameForContentController()
    self.view.addSubview(self.currentClientView)
    content.didMove(toParentViewController: self)
}
 ```

### Removing a Child View Controller
 1. Call the child’s willMoveToParentViewController: method with the value nil.
 2. Remove any constraints that you configured with the child’s root view.
 3. Remove the child’s root view from your container’s view hierarchy.
 4. Call the child’s removeFromParentViewController method to finalize the end of the parent-child relationship.

```swift
func hideContentController(_ content: UIViewController) {
    content.willMove(toParentViewController: nil)
    content.view.removeFromSuperview()
    content.removeFromParent()
}
```

#### Transitioning Between Child View Controllers
```swift
func cycle(from oldVC: UIViewController, to newVC: UIViewController) {

    // Prepare the two view controllers for the change.
    oldVC.willMove(toParentViewController: nil)
    self.addChildViewController(newVC)

    // Get the start frame of the new view controller and the end frame
    // for the old view controller. Both rectangles are offscreen.
    newVC.view.frame = self.newViewStartFrame()
    var endFrame: CGRect = self.oldViewEndFrame()
    // Queue up the transition animation.
    self.transition(from: oldVC, to: newVC, duration: 0.25, options: [], animations: {() -> Void in
        // Animate the views to their final positions.
        newVC.view.frame = oldVC.view.frame
        oldVC.view.frame = endFrame
    }, completion: {(_ finished: Bool) -> Void in
        // Remove the old view controller and send the final
        // notification to the new view controller.
```


[Reference](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html#//apple_ref/doc/uid/TP40007457-CH11-SW1)





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
