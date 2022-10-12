import Cocoa

///  PROTOCOLS

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I am traveling \(distance)km")
    }
    
    func openSunroof() {
        print("It is a nice day!")
    }
    
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1 //when proporty is { get set } we can use computed proporties.
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'am cycling \(distance) km")
    }
    
    
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle!")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance) km.")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)

/// HOW TO USE OPAQUE RETURN TYPES

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

let number = getRandomNumber()

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


/// EXTENSIONS

//add functionality any type

var quote = " I need to go there "

let trimmedQuote = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

print(quote.trimmed())
quote.trim()


let lyrics = """
 fdjkfd ksdfe fdisjvidewnvv sdfsd
dfdjskdfsd dsfjkljfkwebvxjiojfwdefa
vmikmvoweiobigewrijdfklsajflasd
vfnvoieavoivbf dfkdfjkjfviwfew
vjioajgeiogaoihi ijfkdsfjkneve e
"""

print(lyrics.lines.count)

//when we use the struct sometimes we need initialize our proporties inside the extension it is more flexible. Because when we initialize inside the struct membervise initializer has  been canceled.

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
    
    
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let book = Book(title: "Outliers", pageCount: 1234, readingHours: 23)

/// PROTOCOL EXSTENSIONS
//if we use the Collection(protocol) insted of any Array than thi rule will issued to all type osf collections (array, dictionaries, sets).

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Aknur", "Akan", "Akim", "Anarbek"]
if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}
extension Person {
    func sayHello() {
        print("Hi, I am \(name)")
    }
}

struct Employee: Person {
    var name: String
    
    
}

let me = Employee(name: "Azat")
me.sayHello()

///SUMMARY

/*
 Let’s recap what we learned:

 Protocols are like contracts for code: we specify the functions and methods that we required, and conforming types must implement them.
 Opaque return types let us hide some information in our code. That might mean we want to retain flexibility to change in the future, but also means we don’t need to write out gigantic return types.
 Extensions let us add functionality to our own custom types, or to Swift’s built-in types. This might mean adding a method, but we can also add computed properties.
 Protocol extensions let us add functionality to many types all at once – we can add properties and methods to a protocol, and all conforming types get access to them.
 */


///CHECKPOINT 8

protocol Building {
    var numberOfRooms: Int { get set }
    var cost: Int { get set }
    var realState: String { get set }
    
    func printSalesSummary()
}

extension Building {
    func printSalesSummary() {
        print("\(realState) are going to sell the building with room \(numberOfRooms) and the cost is: \(cost)")
    }
}


struct House: Building {
    var numberOfRooms: Int
    
    var cost: Int
    
    var realState: String
    
    
}


struct Office: Building {
    var numberOfRooms: Int
    
    var cost: Int
    
    var realState: String
    
    
}


let myOffice = Office(numberOfRooms: 4, cost: 3234, realState: "Beka")
myOffice.printSalesSummary()
