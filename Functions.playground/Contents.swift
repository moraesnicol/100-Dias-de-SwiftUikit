import UIKit

func printHelp() {
    let message = """
    Welcome to MyApp!
    Run this app inside a directory of images and
    MyApp will resize them all into thumbnails
    """

    print(message)
}

printHelp()

//

func square(number: Int) {
    print(number * number)
}
square(number: 8)

//

func square2(number: Int) -> Int {
    return number * number
}



let result = square2(number: 8)
print(result)





// parameter: one to be used externally when calling the function, and one
// to be used internally inside the function.
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

//
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")


//
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

//
greet2("Taylor")
greet2("Taylor", nicely: false)




func square3(x: Int...) {
    for x in x {
        print("\(x) squared is \(x * x )")
    }
}
square3(x: 1, 2, 3, 4, 5)


// Sometimes functions fail because they have bad input, or because something went wrong internally. Swift lets us throw errors from functions by marking them as throws before their return type, then using the throw keyword when something goes wrong.
// First we need to define an enum that describes the errors we can throw. These must always be based on Swift’s existing Error type. We’re going to write a function that checks whether a password is good, so we’ll throw an error if the user tries an obvious password:
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
var x = doubleInPlace(number: &myNum)
print(x)
