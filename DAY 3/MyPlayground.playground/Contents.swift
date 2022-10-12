import Cocoa

var greeting = "Hello, playground"

///ARRAYS

var beatles = ["John", "Paul", "Gerorge", "Ringo"]
beatles[0] = "Bektur"
print(beatles)
beatles.append("Azamat") //swift care about that you enter same type of data to array


var numbers = [12, 43, 54, 664, 65, 65]


//how to create a empty specialized  array

var scores = Array<Int>()
scores.append(43)
scores.append(65)
scores.append(65)
print(scores)

//more useful option

var albums = [String]()
albums.append("Folkflore")
albums.append("Red")
albums.append("Fearless")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Bektur", "Aknur"]

print(characters.count)
characters.remove(at: 1)
print(characters.count)

//characters.removeAll()

characters.contains("Lana")

//sort
characters.sorted()

//reversed

var reversedCharacters = characters.reversed()
print(reversedCharacters)

///DICTIONARIES

//problems with arrays

var employee = ["Taylor Swift", "Singer", "Nashvelle"]
print("Name: \(employee[0])")
//employee.remove(at: 1)
print("Job title: \(employee[1])")
print("Location: \(employee[2])")


//in this type of cituations we can use dictionaries

var employeeDictionary = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashvelle"
]
//it creates warning (to solve the warning we need add for now default value) - key value pairing
print(employeeDictionary["name", default: "Unknown"])
print(employeeDictionary["job", default: "Unknown"])
print(employeeDictionary["location", default: "Unknown"])

//we can use different types of data inside the dictionaries

let hasGraduated = [
    "Eric" : false,
    "Bektur" : true,
    "Aknur" : true,
    "Azamar" : true
]

print(hasGraduated["Bektur", default: false])

//declaration of dictionaries

var heights = [String : Int]()
var heights1 = [String : String]()

let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["Scotland"]

///SETS

//two important differencxies

var actors = Set(["Bektur", "Azamat", "Aknur", "Aman", "Erlan", "Bektur"])

//dont have an order
//dont have a dublicated value

print(actors)

//we cant appent the item
// we can insert

actors.insert("Kairat")
print(actors)
//sets uses highly optimized data that it works faster than array
//optimized for fast lookup

//ENUMS

//promlem

var selected = "Monday"
selected = "Tuesday"
selected = "January"//month
selected = "Friday "//has a space

//solution with enum

enum Weekday {
    case monday
    case tuesday
    case wednsday
    case thursday
    case friday
    //short way top write
    
    //case monday, tuesday, wednsday, thursday, friday
}

var day = Weekday.monday
day = Weekday.friday
//we can skip enum name after the first assignment
day = .thursday
day = .wednsday

//enum will limit your option you dont have a change to write a wrog value


