import Cocoa


///How to limit access to internal data using access control


//private - Dont let anything outside the struct use this.
//fileprivate -> Dont let anything outside the current file use this.
//public-> Let anyone, anywhere use this.
//private(set) -> anyone can read but only I can write.

import Cocoa

struct  BankAccount {
    private var funds = 0
    
    mutating func deposint(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int)-> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposint(amount: 12)
//account.funds = 10000


///Static proporties and methods

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
    
}

School.add(student: "Taylor Swift")
School.add(student: "Bektur Mamytov")
print(School.studentCount)

//we use the static keyword to access the element without any proporties

// self -> The current value of a struct
// Self -> The current type of struct

///SUMMARY


///CHECKPOINT 6

struct Car {
    let model: String
    let numberOfSeats: Int
    var currentGear: Int
    
    mutating func changeGear(gear: Int) {
        if gear < 10 && gear > 1 {
            print("Gear changed to \(gear).")
            currentGear = gear
        } else {
            print("\(gear) is invalid number for assignment of current gear. I has to be between 1 and 10.")
        }
        
       
    }
}


var myCar = Car(model: "210", numberOfSeats: 4, currentGear: 8)
myCar.changeGear(gear: 90)
