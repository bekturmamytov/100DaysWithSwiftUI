import Cocoa

var greeting = "Hello, playground"


let surname: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.14
let isOk: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String : String] = ["id" : "@bekturmamytov"]
var books: Set<String> = Set([
    "Erte kelgen turnalar",
    "Outliers",
    "Kyzyl alma"
])

//initialization

var teams: [String] = [String]()
var clues: [String] = []
var cities = [String]()

//Enum

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark


//when we need to use type annnotations

//with constant that I dont have a value yet
let username: String
//lots of complex logic
username = "bekturmamytov"
//lots of complex logic
print(username)

///Golden rule = swift must know which data type you are going to assing to var and let.


///why does Swift have type annotations?”
///Swift can’t figure out what type should be used.
///You want Swift to use a different type from its default.
///You don’t want to assign a value just yet.

///when should I use type annotations in Swift?
///It makes my code shorter and easier to read.
///It allows me to change the type of something just by changing whatever is its initial value.
///
/////checkpoint 2

var classmates: [String] = ["Anarbek", "Askar", "Kuban", "Altynbek", "Samat", "Marat", "Bekbolot"]
print(classmates.count)

var classmates1: Set<String> = Set(["Anarbek", "Askar", "Kuban", "Altynbek", "Samat", "Marat", "Bekbolot", "Askar"])
print(classmates1.count)

