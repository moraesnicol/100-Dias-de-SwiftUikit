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

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf




For example, if someone scored 95 in an exam but needs to be penalized 5 points, you could write this:

var score = 95
score -= 5

Similarly, you can add one string to another using +=:

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"



Swift has several operators that perform comparison, and these work more or less like you would expect in mathematics.

Let’s start with a couple of example variables so we have something to work with:

let firstScore = 6
let secondScore = 4


Swift has several operators that perform comparison, and these work more or less like you would expect in mathematics.

Let’s start with a couple of example variables so we have something to work with:

let firstScore = 6
let secondScore = 4
There are two operators that check for equality: == checks two values are the same, and != (pronounced “not equals”) checks two values are not the same:

firstScore == secondScore
firstScore != secondScore


There are four operators for comparing whether one value is greater than, less than, or equal to another. These are just like in mathematics:

firstScore < secondScore
firstScore >= secondScore


We can use conditions to check for a winning Blackjack hand:

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}


The code inside the braces – { and } – will be run if the condition is true. If you want you can provide alternative code to run if the condition is false, using else:

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

You can also chain conditions together using else if:

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

Swift has two special operators that let us combine conditions together: they are && (pronounced “and”) and || (pronounced “or”).

For example, we could check that the age of two people are both over a certain value like this:

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}


That print() call will only happen if both ages are over 18, which they aren’t. In fact, Swift won’t even bother checking the value of age2 because it can see that age1 already failed the test.

The alternative to && is ||, which evaluates as true if either item passes the test. For example we could print a message if either age is over 18:


if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}



The ternary operator is a condition plus true or false blocks all in one, split up by a question mark and a colon, all of which which makes it rather hard to read. Here’s an example:
let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")


That checks whether the two cards are the same, then prints “Cards are the same” if the condition is true, or “Cards are different” if it’s false. We could write the same code using a regular condition:
if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}



If you have several conditions using if and else if, it’s often clearer to use a different construct known as switch case. Using this approach you write your condition once, then list all possible outcomes and what should happen for each of them.
To try this out, here’s a weather constant containing the string sunny:
let weather = "sunny"


We can use a switch block to print one of four different messages:
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}



In that example, the last case – default – is required because Swift makes sure you cover all possible cases so that no eventuality is missed off. If the weather is anything other than rain, snow, or sun, the default case will be run.
Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}


Swift gives us two ways of making ranges: the ..< and ... operators. The half-open range operator, ..<, creates ranges up to but excluding the final value, and the closed range operator, ..., creates ranges up to and including the final value.
For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.
Ranges are helpful with switch blocks, because you can use them for each of your cases. For example, if someone sat an exam we could print different messages depending on their score:

let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")

}

You’ve made it to the end of the third part of this series, so let’s summarize:

Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
You can use if, else, and else if to run code based on the result of a condition.
Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
If you have multiple conditions using the same value, it’s often clearer to use switch instead.
You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
