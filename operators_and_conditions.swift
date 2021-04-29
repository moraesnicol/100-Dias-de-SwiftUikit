import Foundation


let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore


let product = firstScore * secondScore
let divided = firstScore / secondScore

Swift has a special operator for calculating remainders after division: %. It calculates how many times one number can fit inside another, then sends back the value that’s left over.

For example, we set secondScore to 4, so if we say 13 % secondScore we’ll get back one, because 4 fits into 13 three times with remainder one

let remainder = 13 % secondScore




Swift supports operator overloading, which is a fancy way of saying that what an operator does depends on the values you use it with. For example, + sums integers like this:

let meaningOfLife = 42
let doubleMeaning = 42 + 42
But + also joins strings, like this:

let fakers = "Fakers gonna "
let action = fakers + "fake"
You can even use + to join arrays, like this:

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf





