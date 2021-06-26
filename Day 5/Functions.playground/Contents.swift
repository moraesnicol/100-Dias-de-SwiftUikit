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
