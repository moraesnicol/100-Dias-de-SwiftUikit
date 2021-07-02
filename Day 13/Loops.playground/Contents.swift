import UIKit

//Loops

print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")


for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"

for _ in 1 ... 5 {
    str += " fake"
}

print(str)


//Looping over arrays

var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ... 3 {
    print("\(people[i]) gonna \(actions[i])")
}

var people2 = ["players", "haters", "heart-breakers", "fakers"]
var actions2 = ["play", "hate", "break", "fake"]

for i in 0 ..< people2.count {
    print("\(people2[i]) gonna \(actions2[i])")
}


var people3 = ["players", "haters", "heart-breakers", "fakers"]
var actions3 = ["play", "hate", "break", "fake"]

for i in 0 ..< people3.count {
    var str = "\(people3[i]) gonna"

    for _ in 1 ... 8 {
        str += " \(actions3[i])"
    }

    print(str)
}

//While


var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 556 {
        break
    }
}


var songs4 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song4 in songs4 {
    if song4 == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song4)")
}

let liveAlbums = 5

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}
