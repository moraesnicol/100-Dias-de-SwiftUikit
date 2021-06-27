import UIKit

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new User")
    }
}


var user = User()
user.username = "Fulano"
print(user)

//

struct Person {
    var name: String
   lazy var familyTree = FamilyTree()
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var ed = Person(name: "Ed")

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

print(ed.familyTree)



// You can also ask Swift to share specific properties and methods across all instances of the struct by declaring them as static.
struct Student {
    
    static var classSize = 0
    var name: String
    
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
        
    }
}

print(Student.classSize)


//Access control

struct Customer {
   private var id: String

    init(id: String) {
        self.id = id
    }
    
    func identify() -> String{
        return "    My social security number is \(id)"
    }
}
let ed2 = Customer(id: "12345")








