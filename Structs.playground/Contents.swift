import UIKit

struct Sport {
    var name: String
}


var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"
print(tennis.name)

//

struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


//

struct Progress {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
print(progress)

//

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
print(london.collectTaxes())


struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Gabriel")
person.makeAnonymous()


