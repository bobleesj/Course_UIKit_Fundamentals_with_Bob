
## Realm

An open source database framework

a complete replacement for Core Data/SQLite

Implemted from scratch, based on ORM method
Fast performance, simple API, thread-safe
Cross-platform

500,000,000 devies


```swift

class Dog: Object {
  dynamic var name = ""
  dynamic var age = 0
  dynamic var birthday = NSDate.date()
  dynamic var height = 0.0
  dynamic var vaccinated = true   
}


let newDog = Dog()
newDog.name = "Early Hello"


// Write is synchronious
let realm = Realm()
realm.write {
  realm.add(newDog)
}


// Reading assynchrnious

// Pulls every object but lazily loaded
let dogs = Realm().objects(Dog)

//Filter te dogs by age
let puppies = dogs.filter("age < 2")

let sortedPuppies = puppies.sort("name")

// Updating objects in a realm

// Get the first dog in the database
let dog = Realm().objects(Dog).first

// dog.name = "Jabb the Mutt" // you can not

// Correct

Realm().write {
  dog.name = "Jabba" // good
}


// Modifying Realm Model objects must be done inside a write transaction
```


1. All Realm objects are thread-confined
2. An exception will be called if trying to access an object across threads
3. Best practice is to re-fetch the same Realm object on the new thread


Passing Objects across threads

class Dog: Object {
  dynamic var uuid = NSUUID().UUIDString

  override static func primaryKey() {
    return "uuid"
  }
}

// Pass a dog object between threads

let dogUUID = myDog.uuid

dispatch_async(dispatch_get_global_queue(0,0)) {
  let myNewDog = Realm().objectForPrimaryKey(Dog, dogUUID)
}

https://realm.io/news/introducing-realm/



https://realm.io/products/realm-mobile-platform/

## Realm
**The Realm Mobile Platform** delivers automatic and seamless realtime data sync and powerful event handling between server and devices. You never need to think about networking code again.

**The Realm Mobile Database** is cross-platform, supporting both iOS and Android, and the Realm Object Server is ready to run on your servers or on your favorite cloud.


## The Realm Mobile Platform
The core concept of the Realm Mobile Platform is a lightweight object container called a Realm. Like a database, data in Realms can be queried and filtered, interconnected, and persisted. Unlike a traditional database, though, objects in Realms are live and fully reactive. Realms synchronize seamlessly between devices and applications, and can be accessed safely across threads.

### The Realm Mobile Database
Objects in a Realm are native objects. You don't need to copy objects out of the database. The Realm Mobile Database is open source whose core is written in C++.

### The Realm Object Server
Application built on the Realm Mobile Platform have the ability to access and create Realms on the Realm-Object Server. All your application needs is the connection information for your Object Server and the URLs of the server-side Realms. Objects on the Realm Object Server will be downloaded as the application needs them-then the local copy of the Realm will be kept fully fully synchronized with the Object Server's copy.




## Cloud: Deploy the Realm Object Server


## Digital Ocean Q&A
Am I charged when I enter a credit card?
No—when you enter a card, we only verify the card. Your card is charged at the end of the billing cycle.


The SSH keys are a key pair made between your computer and the server that allows the server to connect if it sees the matching key on the machine from which you are logging in

While a password can eventually be cracked with a brute force attack, SSH keys are nearly impossible to decipher by brute force alone.You can create new DigitalOcean droplets with an SSH key already set up on them by adding your computer’s SSH key to the control panel.
