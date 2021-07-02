import UIKit

protocol Identifiable {
    var id: String { get set }
    func identify()
}

struct User: Identifiable {
    var id: String
}


func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}


//Now when we create a type that conforms to Identifiable it gets identify() automatically
let twostraws = User(id: "twostraws")
twostraws.identify()

//

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}


protocol Employee: Payable, NeedsTraining, HasVacation { }

//
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
print(number.squared())

// Swift doesn’t let you add stored properties in extensions, so you must use computed properties instead. For example, we could add a new isEven computed property to integers that returns true if it holds an even number:

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}


// Protocols let you describe what methods something should have, but don’t provide the code inside.

// Extensions let you provide the code inside your methods, but only affect one data type – you can’t add the method to lots of types at the same time.

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()
