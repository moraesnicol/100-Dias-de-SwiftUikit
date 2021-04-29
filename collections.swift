

import SwiftUI



//Arrays, sets, and dictionaries are called collections, because they collect values together in one place

array

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]



Sets random


let colors = Set(["red", "green", "blue"])


sets are unordered and cannot contain duplicates, whereas arrays retain their order and can contain duplicates.


sets don’t need to store your objects in the order you add them, they can instead store them in a seemingly random order that optimizes them for fast retrieval.

In comparison, arrays must store their items in the order you give them, so to check whether item X exists in an array containing 10,000 items Swift needs to start at the first item and check every single item until it’s found – or perhaps it isn’t found at all.


Tuples

var name = (first: "Taylor", last: "Swift")
name.0
name.last

Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:
You can’t add or remove items from a tuple; they are fixed in size.
You can’t change the type of items in a tuple; they always have the same types they were created with.
You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
Arrays, sets, and tuples can seem similar at first, but they have distinct uses. To help you know which to use, here are some rules.
If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:


let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:


let set = Set(["aardvark", "astronaut", "azalea"])


If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

Dictionaires
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]




Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.
The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:
 
If you want to create an empty collection just write its type followed by opening and closing parentheses. For example, we can create an empty dictionary with strings for keys and values like this
 

var teams = [String: String]()



We can then add entries later on, like this:



teams["Paul"] = "Red"


Similarly, you can create an empty array to store integers like this:

var results = [Int]()




The exception is creating an empty set, which is done differently:

var words = Set<String>()
var numbers = Set<Int>()




This is because Swift has special syntax only for dictionaries and arrays; other types must use angle bracket syntax like sets.
If you wanted, you could create arrays and dictionaries with similar syntax:


var scores = Dictionary<String, Int>()
var results = Array<Int>()








Enums   (switch)

Enumerations – usually called just enums – are a way of defining groups of related values in a way that makes them easier to use.
For example, if you wanted to write some code to represent the success or failure of some work you were doing, you could represent that as strings:


let result = "failure"



But what happens if someone accidentally uses different naming?

let result2 = "failed"
let result3 = "fail"



All those three are different strings, so they mean different things.
With enums we can define a Result type that can be either success or failure, like this:

enum Result {
    case success
    case failure
}




And now when we use it we must choose one of those two values:

let result4 = Result.failure


This stops you from accidentally using different strings each time.
As well as storing a simple value, enums can also store associated values attached to each case. This lets you attach additional information to your enums so they can represent more nuanced data.
For example, we might define an enum that stores various kinds of activities:


enum Activity {
    case bored
    case running
    case talking
    case singing
}



That lets us say that someone is talking, but we don’t know what they are talking about, or we can know that someone is running, but we don’t know where they are running to.
Enum associated values let us add those additional details:


enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}



Now we can be more precise – we can say that someone is talking about football:

let talking = Activity.talking(topic: "football")



Sometimes you need to be able to assign values to enums so they have meaning. This lets you create them dynamically, and also use them in different ways.
For example, you might create a Planet enum that stores integer values for each of its cases:


enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}



Swift will automatically assign each of those a number starting from 0, and you can use that number to create an instance of the appropriate enum case. For example, earth will be given the number 2, so you can write this:

let earth = Planet(rawValue: 2)



If you want, you can assign one or more cases a specific value, and Swift will generate the rest. It’s not very natural for us to think of Earth as the second planet, so you could write thi

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}



Now Swift will assign 1 to mercury and count upwards from there, meaning that earth is now the third planet.




You’ve made it to the end of the second part of this series, so let’s summarize:
Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
Arrays store items in the order you add them, and you access them using numerical positions.
Sets store items without any order, so you can’t access them using numerical positions.
Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
Dictionaries store items according to a key, and you can read items using those keys.
Enums are a way of grouping related values so you can use them without spelling mistakes.
You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
