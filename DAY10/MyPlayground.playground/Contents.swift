import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title), \(artist), \(year)")
    }
}


let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
print(red.title)
red.printSummary()


//when we should use mutating functions

struct Employee {
    let name: String//PROPORTIES
    var vacationRemaining: Int = 10 // when we have default value during the initialization we dont need to specify the value
    //mutating functions can be called only with variable see the example
    mutating func takeVacation(days: Int) { //METHODS
        if vacationRemaining > days {
            //when I want to change
            vacationRemaining -= days
            print("I am going on vacation!")
            print("Days remaining: \(days)")
        } else {
            print("Opps! There aren't enough days remaining!")
        }
    }
}

//INSTANSES
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14) //INITIALIZER FOR THE STRUCT
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

var lana = Employee(name: "Lana") //when we dont want to specify the value of the proporties we need to assign as variable no constant
lana.takeVacation(days: 3)
print(lana.vacationRemaining)


//tuples vs struct

var tuples: (name: String, age: Int, city: String)

//So, use tuples when you want to return two or more arbitrary pieces of values from a function, but prefer structs when you have some fixed data you want to send or receive multiple times.


///HOW TO COMPUTE PROPERTY VALUES DYNAMICALLY

//stored and computed proporties

struct Employee1 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
        
    }
}

var kane = Employee1(name: " Lana Kane", vacationAllocated: 14)
kane.vacationTaken += 4
print(kane)
kane.vacationRemaining = 5
print(kane)


struct Toy {
    var color: String
    var isForGirls: Bool {
        if color == "Pink" {
            return true
        } else {
            return true
        }
    }
}
var toy = Toy(color: "Red")
print(toy.isForGirls)

///HOW TO TAKE ACTION WHEN A PROPERTY CHANGES

//property observers

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        } // didSet is the property observer, will work when changes the value of the proporties
    }
}

var game = Game()
game.score += 30
game.score -= 12
game.score += 300

//another exemple

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Bektur")
app.contacts.append("Aknur")
app.contacts.append("Azamat")

//willSet and didSet are property observers and they executes automaticly when changes the values of properties.

//This is where the function approach goes sour: it’s on you to remember to call that function whenever the property changes, and if you forget then you’ll have mysterious bugs in your code. On the other hand, if you attach your functionality directly to the property using didSet, it will always happen, and you’re transferring the work of ensuring that to Swift so your brain can focus on more interesting problems.

struct BankAccount {
    var name: String
    var isMillionnaire = false
    var balance: Int {
        didSet {
            if balance > 1_000_000 {
                isMillionnaire = true
            } else {
                isMillionnaire = false
            }
        }
    }
}

var bankBalance = BankAccount(name: "may", balance: 1_000_000)
print(bankBalance.isMillionnaire)


struct App1 {
    var name: String
    var isOnSale: Bool {
        didSet {
            if isOnSale {
                print("Go and download my app!")
            } else {
                print("Maybe download it later.")
            }
        }
    }
}

var app1 = App1(name: "Btri", isOnSale: true)
app1.isOnSale = true


///How to create custom initializers
//we need to foloow exact one rule

//membervise initializer

struct Player {
    let name: String
    let number: Int
}

let player = Player(name: "Magan E", number: 15)
print(player)

//next
struct Player1 {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
    //in the initializer all values has to assign a value
}

let player1 = Player1(name: "Bektur")
print(player1)

struct Dictionary {
    var words = Set<String>()
}
let dictionary = Dictionary()

struct Message {
    var from: String
    var to: String
    var content: String
    init() {
        from = "Unknown"
        to = "Unknown"
        content = "Yo"
    }
}
let message = Message()
struct Language {
    var nameEnglish: String
    var nameLocal: String
    var speakerCount: Int
    init(english: String, local: String, speakerCount: Int) {
        self.nameEnglish = english
        self.nameLocal = local
        self.speakerCount = speakerCount
    }
}
let french = Language(english: "French", local: "français", speakerCount: 220_000_000)
