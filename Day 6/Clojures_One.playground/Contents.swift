import UIKit

let driving = {
    print("I'm driving in my car")
}

driving()


let driving2 = { (place: String) in
    print("I'm going to \(place) in my plane")
}

driving2("London")

// We want a closure that returns a string rather than printing the message directly, so we need to use -> String before in, then use return just like a normal function:


let drivingWithRetun = {
    (place: String) -> String in return "I'm going to \(place) in my car"
}

let message = drivingWithRetun("America")
print(message)


func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived")
}
travel(action: driving)

travel() {
    print("I'm driving in my caaaaaaaaaar")
}


travel {
    print("I'm driving in my 🏴‍☠️ car")
}

//

func travel2(action: (String) -> String) {
    print("I'm getting ready to go now.")
    let description = action("Brazil")
    print(description)
    print("I arrived  🏴‍☠️ !")
    
    
}

//ex1
travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car 🏴‍☠️"
}

//ex2
travel2 { place in
    return "I'm going to \(place) in my car 😄"
}

//ex3
travel2 {
    "I'm going to \($0) in my car 😄😄😄😄"
}





