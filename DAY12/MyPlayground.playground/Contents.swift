import Cocoa

/// How to create your own classes

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

/*
 Classes differ from structs in five key places:
 
 1. You can make one class build upon functionality in another class, gaining all its properties and methods as a starting point. If you want to selectively override some methods, you can do that too.
 2. Because of that first point, Swift won’t automatically generate a memberwise initializer for classes. This means you either need to write your own initializer, or assign default values to all your properties.
 3. When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.
 4. When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.
 5. Even if you make a class constant, you can still change its properties as long as they are variables.
*/


/// 1. INHERITANCE

class Employee {
    var hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func summary() {
        print("I works \(hours) a day!")
    }
    
}


class Developer: Employee {
    func work() {
        print("I am writing code for \(hours) hours.")
    }
    //when we want to change the methods of parent class inside the child class than we need use 'override' keyword.
    
    override func summary() {
        print("I am a developer who will sometimes work \(hours) hours a day.")
    }
}

//when we mark the class as a final class the class can inherit from other class but we can not use this class as inheritance class.

final class Manager: Employee {
    func work() {
        print("I am going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 12)
let sam = Manager(hours: 8)

robert.work()
sam.work()

let bektur = Developer(hours: 13)
bektur.summary()

/// 2. INITIALIZERS

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}
    
let teslaX = Car(isElectric: true, isConvertible: false)

/// 3. COPY THE CLASSES

class User {
    var username = "Anonymous"
    
    //we can use copy() func to safey copy the value
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Taylor"

print(user1.username)
print(user2.username)

//when we make a capy of class and after than we change the any copy all copies will change to the last value. In the oposite side struct doesnt change the values

/// 4. DEINITIALIZER

class User1 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I am alive!")
    }
    
    deinit {
        print("User \(id): I am dead!")
    }
}

var users = [User1]()

for i in 1...3 {
    let user = User1(id: i)
    print("User \(user.id); I am in control!")
    users.append(user)
}

print("Loop is finished")
//print(users)
users.removeAll()
print("Array is clear")

/// 5. WORK WITH VARIABLES

class User4 {
    var name = "Bektur"
}

var user4 = User4()
user4.name = "Aknur"
print(user4.name)

user4 = User4()
print(user4.name)

///TEST START
class TIE {
    var name: String
    var speed: Int
    init(name: String, speed: Int) {
        self.name = name
        self.speed = speed
    }
}
let fighter = TIE(name: "TIE Fighter", speed: 50)
let interceptor = TIE(name: "TIE Interceptor", speed: 70)



class Starship {
    var maxWarp = 9.0
}
var voyager = Starship()
voyager.maxWarp = 9.975
var enterprise = voyager
enterprise.maxWarp = 9.6
print(voyager.maxWarp)
print(enterprise.maxWarp)


class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
}
var pizza = Pizza()
pizza.add(topping: "Mushrooms")
///TEST END


/// CHECKPOINT 7

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
}

class Dog: Animal {
    
    func speak() {
        print("I am a dog and I am barking!")
    }
}

class Corgi: Dog {
    var name: String = "Corgi"
}

let myDog = Corgi(legs: 4)
myDog.speak()


class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("I am a cat and I am taming!")
    }
    
}

let myCat = Cat(isTame: true, legs: 4)
myCat.speak()
myCat.isTame = false

class Lion: Cat {
    var name: String
    
    init(name: String, legs: Int, isTame: Bool) {
        self.name = name
        super.init(isTame: isTame, legs: legs)
    }
    
    override func speak() {
        print("I am a \(name), and I am taming!")
    }
}

let myLion = Lion(name: "Lion", legs: 4, isTame: true)
myLion.speak()
