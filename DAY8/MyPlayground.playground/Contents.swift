import Cocoa

///How to provide default values for parameters

func printTimesTable(for number: Int = 12, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5, end: 12)
printTimesTable(for: 4)
printTimesTable(for: 3, end: 10)
printTimesTable()

var characters = ["Bektur", "Aknur", "Azamat"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.capacity)

func packLunchbox(number: Int, healthy: Bool = true) {
    for _ in 0..<number {
        if healthy {
            print("I'm packing a healthy lunchbox.")
        } else {
            print("Pizza for everyone!")
        }
    }
}

packLunchbox(number: 12)
packLunchbox(number: 1, healthy: false)


/// How to handle errors in functions

enum PasswordError: Error {
    case short, obvious
}


func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let password = "145"
do {
    let result = try checkPassword(password)
    print("Password rating: \(result)")
} catch PasswordError.obvious {
    print("There was an obvious password!")
} catch PasswordError.short {
    print("Your password is \(PasswordError.short)")
}


//if something get wrong (error) hole code jump to the catch block.

//fatal error

//let result = try! checkPassword(password)


///SUMMARY FUNCTIONS

/*
 We’ve covered a lot about functions in the previous chapters, so let’s recap:

 Functions let us reuse code easily by carving off chunks of code and giving it a name.
 All functions start with the word func, followed by the function’s name. The function’s body is contained inside opening and closing braces.
 We can add parameters to make our functions more flexible – list them out one by one separated by commas: the name of the parameter, then a colon, then the type of the parameter.
 You can control how those parameter names are used externally, either by using a custom external parameter name or by using an underscore to disable the external name for that parameter.
 If you think there are certain parameter values you’ll use repeatedly, you can make them have a default value so your function takes less code to write and does the smart thing by default.
 Functions can return a value if you want, but if you want to return multiple pieces of data from a function you should use a tuple. These hold several named elements, but it’s limited in a way a dictionary is not – you list each element specifically, along with its type.
 Functions can throw errors: you create an enum defining the errors you want to happen, throw those errors inside the function as needed, then use do, try, and catch to handle them at the call site.

 */


///CHEKPOINT 4
enum RootError: Error {
    case invalidNumber
    
}

func rootOfNumber(_ number: Int) throws -> Int {
    if number > 10_000 || number < 1 { throw RootError.invalidNumber}
    
    var result = 0
    
    for i in 1...100 {
        let resultFor = (i * number) / number
        result = resultFor
    }
   return result
}


let numberForRoootsqrt = 17854
do {
    let result = try rootOfNumber(numberForRoootsqrt)
    print(result)
} catch {
    print("Your number is \(RootError.invalidNumber)")
}
