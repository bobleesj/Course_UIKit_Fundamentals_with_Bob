# Navigation and Tab Bar Controller Structure

## Introduction

## Problem

<img src=/course/ios-ecosystem/assets/navigation-controller-hierchy.png>

## Container View Controller
Container view controllers are a way to combine the content from multiple view controllers into a single user interface. Container view controllers are most often used to facilitate navigation and to create new user interface types based on existing content. Examples of container view controllers in UIKit include UINavigationController, UITabBarController, and UISplitViewController, all of which facilitate navigation between different parts of your user interface.

### Add child view controller
Call the addChildViewController: method of your container view controller.
This method tells UIKit that your container view controller is now managing the view of the child view controller.
Add the child’s root view to your container’s view hierarchy.
Always remember to set the size and position of the child’s frame as part of this process.
Add any constraints for managing the size and position of the child’s root view.
Call the didMoveToParentViewController: method of the child view controller.

```swift
- (void) displayContentController: (UIViewController*) content {
   [self addChildViewController:content];
   content.view.frame = [self frameForContentController];
   [self.view addSubview:self.currentClientView];
   [content didMoveToParentViewController:self];
}
```


### Remove child view controller
Call the child’s willMoveToParentViewController: method with the value `nil`.
Remove any constraints that you configured with the child’s root view.
Remove the child’s root view from your container’s view hierarchy.
Call the child’s removeFromParentViewController method to finalize the end of the parent-child relationship.

```swift
- (void) hideContentController: (UIViewController*) content {
   [content willMoveToParentViewController:nil];
   [content.view removeFromSuperview];
   [content removeFromParentViewController];
}
```


### Suggestions for Building a Container View Controller
Access only the root view of a child view controller. A container should access only the root view of each child—that is, the view returned by the child’s view property. It should never access any of the child’s other views.
Child view controllers should have minimal knowledge of their container. A child view controller should focus on its own content. If the container allows its behavior to be influenced by a child, it should use the delegation design pattern to manage those interactions.
Design your container using regular views first. Using regular views (instead of the views from child view controllers) gives you an opportunity to test layout constraints and animated transitions in a simplified environment. When the regular views work as expected, swap them out for the views of your child view controllers.



### Resources
### References

## Conclusion
