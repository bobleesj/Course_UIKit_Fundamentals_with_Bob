# View Controller Structure

## Introduction
Welcome to Lesson 2 of Part 2: The iOS Ecosystem. Today, you will learn how view controllers are organized and grouped together. I don't think I need to say much. So, let's get into.

## Lecture Notes

### Objectives
Learn how view controllers are structured.

### View Controller Roles

#### The Root View
<img src=/2000/2100/resources/2102_view_controller_structure.png alt="A relationship between a view controller and its views" width=600px>

> It is common practice to use outlets to access other views in your view controller’s view hierarchy. Because a view controller manages the content of all its views, outlets let you store references to the views that you need.

#### Handling User Interactions
ViewControllers inherit responder objects. They may handle events. However, usually views and buttons handle their own touch events and pass data or notify the view controller through the delegate pattern.

 - View controllers define action methods for handling higher-level events such as Gesture recognizers
 - View controllers observe [notifications](/2000/2100/2108_notification.md) sent by the system or other objects.
 - View controllers act as a [data source]() or delegate for another object

### Resource Management
A view controller manages its views and objects.  It  may destroy or create new views and objects. When the available space is low, it notifies the user to free up resources via `didReceiveMemoryWarning`.

## The View Controller Hierarchy

### The Root View Controller
Every window has one root view controller. `UIWindow` has no visible content of its own. When you use storyboards to configure your view controllers, UIKit sets the value of that property automatically at launch time. Otherwise, you may have to create on your own. We will learn more in the following chapter.

<img src=/2000/2100/resources/2102_root_viewcontroller.png alt="The relationship between UIWindow, View Controller, and View" width=600px>

### Container View Controllers
A container view controller is able to keep more than one `UIViewController` objects into an array. Examples are `UINavigationController`, `UISplitViewController`, and `UIPageViewController`

<img src=/2000/2100/resources/2102_container_viewcontroller.png alt="A relationship between a view controller and its views" width=600px>


## Implementing a Container View Controller
Container view controllers are a way to combine the content from multiple view controllers into a single user interface.

### Navigation View Controller
<img src=/2000/2100/resources/2102_navigation_controller.png alt="Navigation Controller with three view controllers"/>

### Split View Controller
<img src=/2000/2100/resources/2102_split_viewcontroller.png alt="Split View Controller with two child view controllers"/>


## Design Tips
Before you decide to create your custom view controllers, check whether the system has already provided some. It not only saves time but also provides a consistent experience for the user.

`UIImagePickerController`, taking videos and photos, alerts, managing files on iCloud, Address Book, MediaPlayer, EventKit, Message UI, AVFoundation.

| Default View Controller | Function |
| --- | --- |
| `UIImagePickerController` | taking videos and photos, alerts, managing files on iCloud, Address Book, MediaPlayer, EventKit, Message UI, AVFoundation. |
| `UIAlertViewController` | Popup, agreement to location service, contact |
| `UIDatePicker` | Pick dates |

## Add and Remove ViewControllers

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

### Reference
[View Controller Programming Guide ](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html#//apple_ref/doc/uid/TP40007457-CH11-SW1)

## Conclusion
You've learned great stuff with me today. To recap, you've learned that there is usually one `UIWindow` object. It must have a `UIViewController` object. The view controller object contains an `UIView` object. Good stuff. In the lesson, let's learn more about the life cycle of a view such as `viewDidLoad`, `viewWillLoad`, and so on. You know what I'm talking about.

#### Stay Connected
I focus on building a long-term relationship with you. Feel free to follow on my social media for personal updates and engagement. You may see what my daily activity is like on Instagram @[bobthedev](instagram.com/bobthedev)

<p>
<a href="http://bobthedeveloper.io"><img src="https://img.shields.io/badge/Personal-Website-333333.svg"></a>
<a href="https://facebook.com/bobthedeveloper"><img src="https://img.shields.io/badge/Facebook-Like-3B5998.svg"></a> <a href="https://youtube.com/bobthedeveloper"><img src="https://img.shields.io/badge/YouTube-Subscribe-CE1312.svg"</a> <a href="https://twitter.com/bobleesj"><img src="https://img.shields.io/badge/Twitter-Follow-55ACEE.svg"></a> <a href="https://instagram.com/bobthedev
"><img src="https://img.shields.io/badge/Instagram-Follow-BB2F92.svg"></a> <a href="https://linkedin.com/in/bobleesj"><img src= "https://img.shields.io/badge/LinkedIn-Connect-0077B5.svg"></a>
<a href="https://medium.com/@bobleesj"><img src="https://img.shields.io/badge/Medium-Read-00AB6C.svg"/></a>
</p>
