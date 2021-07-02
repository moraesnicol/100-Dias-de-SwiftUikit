import Foundation

protocol IPersonRepository {
    func save(_ person: Person)
}


class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class PersonService {

    //referencia na classe
    var repository: IPersonRepository

    init (_ repository: IPersonRepository) {
        self.repository = repository
    }

    func save(_ person: Person) {
        //if inputs
        self.repository.save(person)
    }
}

class PersonRepository : IPersonRepository {
    func save(_ person: Person) {
        //Persistence BD
        print("Person saved!!!")
    }
}

class PersonFakeRepository : IPersonRepository {
    func save(_ person: Person) {
        print("Person saved!!!")
    }
}

func main() {
    var person = Person(firstName: "Thiago", lastName: "Narcizo")
    var service = PersonService(PersonFakeRepository())
    service.save(person)
}

main()
