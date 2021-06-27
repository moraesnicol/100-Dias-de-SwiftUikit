import UIKit




//The first difference between classes and structs is that classes never come with a memberwise initializer. This means if you have properties in your class, you must always create your own initializer.


class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")
print(poppy.name + poppy.breed)



//The second difference between classes and structs is that you can create a class based on an existing class – it inherits all the properties and methods of the original class, and can add its own on top.

final class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    override func makeNoise() {
        print("Yip")
    }
}

let poppy2 = Poodle(name: "Poppy2")
poppy2.makeNoise()

// The third difference between classes and structs is how they are copied. When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.

struct Singer {
    var name = "Taylor Swift "
}

var singer = Singer()
singer.name = "Ed Sheeran"
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)


class Boy {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let boy = Boy()
    boy.printGreeting()
}

// The final difference between classes and structs is the way they deal with constants. If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.


