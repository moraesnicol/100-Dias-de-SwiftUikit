import Foundation

let count = 1...10

for contar in count {
    print("O número é \(contar)")
}



func isstring(word: String) -> String {
    if word.hasPrefix("Is") == true
    {
        return word
    }
    else
    {
        return "Is \(word)"
    }
}

print(isstring(word: "Swift"))


func getNumber() -> Int {
    print("Fetching number...")
    return 5
}

func square<T>(_ value: T) -> T {
    return value * value
}

print(square(5))
