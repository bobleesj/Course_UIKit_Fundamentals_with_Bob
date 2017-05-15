GCD is a low-level C-based API.
NSOperation and NSOperationQueue are Objective-C classes.
NSOperationQueue is objective C wrapper over GCD. If you are using NSOperation, then you are implicitly using Grand Central Dispatch.

GCD advantage over NSOperation:
i. implementation
For GCD implementation is very light-weight
NSOperationQueue is complex and heavy-weight

NSOperation advantages over GCD:

i. Control On Operation
you can Pause, Cancel, Resume an NSOperation

ii. Dependencies
you can set up a dependency between two NSOperations
operation will not started until all of its dependencies return true for finished.

iii. State of Operation
can monitor the state of an operation or operation queue. ready ,executing or finished

iv. Max Number of Operation
you can specify the maximum number of queued operations that can run simultaneously

When to Go for GCD or NSOperation
when you want more control over queue (all above mentioned) use NSOperation and for simple cases where you want less overhead (you just want to do some work "into the background" with very little additional work) use GCD

ref:
https://cocoacasts.com/choosing-between-nsoperation-and-grand-central-dispatch/ http://iosinfopot.blogspot.in/2015/08/nsthread-vs-gcd-vs-nsoperationqueue.html http://nshipster.com/nsoperation/
