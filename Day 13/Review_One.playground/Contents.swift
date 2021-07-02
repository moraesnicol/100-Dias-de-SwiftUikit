import UIKit

//Variables and constants



var name = "Tim McGraw"
name = "fulano"

let name2 = "Tim McGraw"
//name2 = "Romeo" // error


// Types of Data

var name: String
name = "Tim McGraw"

var age: Int
age = 25


var latitude1: Double
latitude = 36.166667

var longitude2: Float
longitude = -86.783333

var longitude3: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333


var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

var name3: String
name = "Tim McGraw"

var name3: String = "Tim McGraw"

//Operators

var a = 10
a = a + 1
a = a - 1
a = a * a

var a = 1.1
var b = 2.2
var c = a + b

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

var a = 1.1
var b = 2.2
var c = a + b

c > 3
c >= 3
c > 4
c < 4

var name = "Tim McGraw"
name == "Tim McGraw"

var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate

var name = "Tim McGraw"
name == "Tim McGraw"
name != "Tim McGraw"


//String interpolation
var name = "Tim McGraw"
"Your name is \(name)"

//Arrays
var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]

var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]


var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
type(of: songs)


var songs: [String] = ["Shake it Off", "You Belong with Me", "Back to December", 3????]


//Dictionaries

var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person["middle"]
person["month"]

// Conditional statements

var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
}

var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
} else if person == "player" {
    action = "play"
} else {
    action = "cruise"
}

//Evaluating multiple conditions

var action: String
var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

//Looking for the opposite of truth

if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}

