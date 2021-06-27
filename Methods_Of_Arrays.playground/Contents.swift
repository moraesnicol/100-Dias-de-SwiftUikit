import UIKit

var toys = ["Woody", "Pokemon", "Digimon"]

print(toys.count)
toys.append("Buzz")
print(toys)
print(toys.firstIndex(of: "Buzz"))
print(toys.sorted())
toys.remove(at: 0)
print(toys)
