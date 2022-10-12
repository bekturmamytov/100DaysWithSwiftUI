import Cocoa

///How tp check a condition is true or false
///IF STATEMENT

let score = 81

if score > 80 {
    print("Greate job!")
}


let speed = 88
let percentage = 85
let age = 18



let ourName = "BekturMamytov"
let friendName = "AknurAkim"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}


//working with array

var numbers = [1, 2, 3]
numbers.append(4)
print(numbers)

if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "Canda"

if country == "Australia" {
    print("Good day")
}

let name = ""

if name != "Anonymous" {
    print("Welcome \(name)")
}

print(name.count)

if name.isEmpty {
    print("Empty")
}


let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)

///How to check multiply conditions

let age1 = 16


if age1 >= 18 {
    print("You can vote")
} else {
    print("Sorry you are not")
}


let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It is a nice day")
    }
}

if temp > 20 && temp < 30 {
        print("It is a nice day")
    }

let userAge = 14
let hasparentalConsent = true

if userAge >= 18 || hasparentalConsent {
    print("You can buy a game")
}


enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.car

if transport == .airplane || transport == .helicopter {
    print("Lets fly")
} else if transport == .bicycle {
    print("i hope thre is a bike path")
} else if transport == .car {
    print("Time to get stack in tracffic")
} else {
    print("I am going to hire scooter now")
}


///How to use switch statement

enum WeatherForecast {
    case sun, rain, wind, snow, unknown
}

let forecast = WeatherForecast.sun

switch forecast {
case .sun:
    print("sun")
    fallthrough
case .rain:
    print("rain")
    fallthrough
case .wind:
    print("wind")
    fallthrough
case .snow:
    print("snow")
    fallthrough
case .unknown:
    print("unknown")
}


let place = "Metropolis"


/// how to use ternary conditional operator

let age11 = 17
let canVote = age11 >= 18 ? "Yes" : "Not"
//1. >= - condition check / What?
//2. ? - if true / True
//3. : - if false / False

let hour = 23
print(hour < 12 ? "before noon" : "after noon")


let names = ["Bektr", "Azamat", "Aknur"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"

print(crewCount)
