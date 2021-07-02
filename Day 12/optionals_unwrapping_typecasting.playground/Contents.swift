import UIKit



var age: Int? = nil

// That doesn’t hold any number – it holds nothing. But if we later learn that age, we can use it:

age = 38


var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing Name")
}

//An alternative to if let is guard let, which also unwraps optionals. guard let will unwrap an optional for you, but if it finds nil inside it expects you to exit the function, loop, or condition you used it in.

//However, the major difference between if let and guard let is that your unwrapped optional remains usable after the guard code.

// Let’s try it out with a greet() function. This will accept an optional string as its only parameter and try to unwrap it, but if there’s nothing inside it will print a message and exit. Because optionals unwrapped using guard let stay around after the guard finishes, we can print the unwrapped string at the end of the function


func greet(_ name: String?) {
    guard let unwrapped = name  else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

greet(name)


// Optionals represent data that may or may not be there, but sometimes you know for sure that a value isn’t nil. In these cases, Swift lets you force unwrap the optional: convert it from an optional type to a non-optional type.


let str = "5"
let num = Int(str)


// Nil coalescing

func username(_ id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(15) ?? "Anonymous"


//Optional chaining


let names = ["John", "Paul", "George", "Ringo"]

let beatle = names.first?.uppercased()

//Optional try


enum PasswordError: Error {
    case Obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.Obvious
    }
    
    return true
}

do  {
    try checkPassword("password")
    print("that password is good!")
}catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

//Failable initializers

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}


//Typecasting

class Animal { }

class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("I`m Dog")
    }
    
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}






