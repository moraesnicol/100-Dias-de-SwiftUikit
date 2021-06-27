import UIKit

//Closures with multiple parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

//
func travel2() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel2()
result("Brazil")


//

func travel3() -> (String) -> Void {
    var counter = 1
    
    return {
        print("I'm going to \($0)  \(counter) many times")
        counter += 1
    }
}

let result3 = travel3()
result3("Argentina")
result3("Argentina")
result3("Argentina")
result3("Argentina")


