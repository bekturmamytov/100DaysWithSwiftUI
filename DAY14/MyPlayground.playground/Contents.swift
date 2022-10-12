import Cocoa

///HOW TO HAMDLE MISSING DATA WITH OPTIONALS

//HOW TO UNWRAP OPTIONALS
//1. by using if let

let opposites = [ "Mario" : "Dimario", "Kenia" : "Dekenia"]

if let marioOpposite = opposites["Maro"] {
    print("Mario's opposite is \(marioOpposite)")
} else {
    print("The optionals was empty")
}

var num1 = 1_000_000//integer
var num2 = 0//empty integer
var num3: Int? = nil//optional integer


var username: String? = nil

if let unwrappedUsername = username {
    print("We got a user: \(unwrappedUsername)")
} else {
    print("The optional was empty")
}


func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    print(square(number: number))
} else {
    print("Number optional is empty")
}


/*
 Swift’s optionals are one of its most powerful features, while also being one of the most confusing. Their core job is simple: they allow us to represent the absence of some data – a string that isn’t just empty, but literally doesn’t exist.
 */


func getUsername() -> String? {
    nil
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}

/// HOW TO UNWRAP OPTIONALS WITH GUARDS

var myVar: Int? = nil

if let unwrapped = myVar {
    //Run if myVar has a value inside
    print(unwrapped)
}

//guard let unwrapped = myVar else {
//    //Run if my var doesn't have a value inside
//}


func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

printSquare(of: 7)


func getMeaningOfLife() -> Int? {
    42
}

//func printMeaningOfLife() {
//    if let name = getMeaningOfLife() {
//        print(name)
//    }
//}

func printMeaningOfLife() {
    guard let name = getMeaningOfLife() else {
        return
    }

    print(name)
}
//So, use if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically checking that conditions are correct before continuing.

func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}


/// HOW TO UNWRAP OPTIONALS WITH NIL COALESCING 3way

let captains = [
    "Enterprise" : "Pichard",
    "Voyager" : "Janeway"
]

let new = captains["Serenity"] ?? "N/A"

let twShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = twShows.randomElement() ?? "None"


struct Book {
    let title: String
    let author: String?
}


let book = Book(title: "Outliers", author: "Bektur")
let author = book.author ?? "Anonymous"
print(author)


///How to handle multiple optionals using optional chaining

var book1: Book? = book

let author1 = book1?.author?.first?.uppercased() ?? "A"
print(author1)

//Swift’s optional chaining lets us dig through several layers of optionals in a single line of code, and if any one of those layers is nil then the whole line becomes nil.
//example

let names = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names["Vincent"]?.first?.uppercased()


///How to handle function failure with optionals

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

/*
 Optionals let us represent the absence of data, which means we’re able to say “this integer has no value” – that’s different from a fixed number such as 0.
 As a result, everything that isn’t optional definitely has a value inside, even if that’s just an empty string.
 Unwrapping an optional is the process of looking inside a box to see what it contains: if there’s a value inside it’s sent back for use, otherwise there will be nil inside.
 We can use if let to run some code if the optional has a value, or guard let to run some code if the optional doesn’t have a value – but with guard we must always exit the function afterwards.
 The nil coalescing operator, ??, unwraps and returns an optional’s value, or uses a default value instead.
 Optional chaining lets us read an optional inside another optional with a convenient syntax.
 If a function might throw errors, you can convert it into an optional using try? – you’ll either get back the function’s return value, or nil if an error is thrown.

 */

//CHECKPOINT 9

func getRandomNumber(numbers: [Int]?) -> Int {
    let random = numbers?.randomElement() ?? Int.random(in: 1...100)
    return random
}

let arrayInt: [Int]? = nil
getRandomNumber(numbers: arrayInt)
