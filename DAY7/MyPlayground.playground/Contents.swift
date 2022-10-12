import Cocoa

/// How to reuse code with functions

func printTimesTable(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}


printTimesTable(number: 3, end: 20)

/*
 There are three times you’ll want to create your own functions:

 The most common time is when you want the same functionality in many places. Using a function here means you can change one piece of code and have everywhere that uses your function get updated.
 Functions are also useful for breaking up code. If you have one long function it can be hard to follow everything that’s going on, but if you break it up into three or four smaller functions then it becomes easier to follow.
 The last reason is more advanced: Swift lets us build new functions out of existing functions, which is a technique called function composition. By splitting your work into multiple small functions, function composition lets us build big functions by combining those small functions in various ways, a bit like Lego bricks.
 
 */

/// How to return a values from functions

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func isSameStringControl(message1: String, message2: String) -> Bool {
    
    message1.sorted() == message2.sorted()
//    if message1.sorted() == message2.sorted() {
//        return true
//    } else {
//        return false
//    }
}

isSameStringControl(message1: "bey Bektur", message2: "Bektur bey")

func pythagoras(a: Double, b: Double) -> Double {
    
    sqrt(a * a + b * b)
//    let input = a * a + b * b
//    let root = sqrt(input)
//    return root
}

let c = pythagoras(a: 12, b: 32)
print(c)

/// How to return multiple values from function
//by using tuples we can return ,ultuple values
func getUser() -> (firstName: String, lastName: String) {
    //(firstName: "Taylor", lastName: "Swift")
    ("Taylor", "Swift")
}

let user = getUser()

print("Name: \(user.0) \(user.1)")
user.firstName

/// How to customize parameter labels


func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
    
}

let string = "HELLi"
let result1 = isUppercase(string)


func printTimeTable(for number: Int) {
    for i in 1...12 {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimeTable(for: 5)
