import Cocoa

var greeting = "Hello, playground"
//variable + name = initial value
//var can change in time

var name = "Bektur"
name = "Azamat"

//Constants

//This value will not change in time

let character = "Daphne"
//character = "Luis"

var playerName = "Roy"
print(playerName)

playerName = "Bektur"
print(playerName)

let managerName = "Bektur Mamytov"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man awlk down?"


//How to create strings

//Multiline string

let movie = """
A day in
the of an
Apple engineer
"""
print(movie)

print(movie.count)

let nameLength = movie.count
print(nameLength)

print(movie.uppercased())

print(movie.hasPrefix("A day"))
print(movie.hasSuffix("Apple engineer"))

//Strings are case sensative!!

var burns = """
The best laid schemes
o' mice an' men
gang aft agley
"""

var coleridge = """
Water, water, everywhere
and not a drop to drink
"""


//How to store whole numbers

let score = 10
let reallyBig = 100_000_000 // to easy read

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2

var counter = 10
counter = counter + 5
counter += 5

let number = 120
print(number.isMultiple(of: 5))


// how to store decimal numbers

let numberDouble = 0.1 + 0.2
print(numberDouble)

//We cant sum Int and Double in one code

let a = 1
let b = 2.3

let c  = a + Int(b)
// It must serve only one type of data
//CGFloat = Use just double 

