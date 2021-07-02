import UIKit


// criando protocols
protocol Vegetable: CustomStringConvertible {
    var species: String { get }
    var carnivore: Bool { get }
}


protocol Carnivore {
    var kilogramsRequiredPerDay: Double { get }
}

//assinando protocols

struct Ventricosa: Vegetable, Carnivore {
    let species: String = "Nepenthes Ventricosa"
   // let eatsMeat: Bool = true
    
    let kilogramsRequiredPerDay: Double = 0.2
}

struct UsualOrchid: Vegetable {
    let species: String = "Cattleya Labiata"
  //  let eatsMeat: Bool = false
    
}

enum SouthAmericanDrosera: String, Vegetable, Carnivore {
    case tentaculata = "tentaculata"
    case sessiliofobia = "sessilifolia"
    case roraimae = "roraimae"
    case unknown
    
    var species: String { return (self != .unknown) ? "Drosera \(self.rawValue)" : "Unknown" }
        
        var kilogramsRequiredPerDay: Double { return 0.03 }
    
}


//

extension Vegetable {
    var eatsMeat: Bool { return self is Carnivore}
}

extension SouthAmericanDrosera {
    var eatsMeat: Bool { return self != .unknown }
}


extension CustomStringConvertible where Self: Vegetable {
    var description: String {
        return "I am a cute plant, my name is \(species)"
    }
}


SouthAmericanDrosera.roraimae
