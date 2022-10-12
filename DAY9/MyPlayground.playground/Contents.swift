import Cocoa

/// How to craete and use closures

func greetUser() {
    print("hi there!")
}
greetUser()

//copy of the function


let greetCopyOfFunc = greetUser

greetCopyOfFunc()

//what if we assign functionality to constant ore variable
let sayHello = {
    print("Say Hello")
}

sayHello()
// in closures we cant put the code outside the brace. We need to put all parameters inside the braces.

let sayHello1 = { (name: String) -> String in
    "Hi \(name)"
}

sayHello1("Taylor") //in closurres we dont use the parameters name.

//keyword in is the marker, it means the end of the parameters and begining of the body of the function


let team = ["Bektur", "Aknur", "Azamat", "Almaz"]
let sortedTeam = team.sorted(by: >)
print(sortedTeam)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Bektur" {
        return true
    } else if name2 == "Bektur" {
        return false
    }
    
    return name1 < name2
}


//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

//by using closures we are using anonymous functions and we are using the functions inside the closures (closures) as na parameter.


//Closures let us wrap up some functionality in a single variable, then store that somewhere. We can also return it from a function, and store the closure somewhere else.
//inline closure

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Bektur" {
        return true
    } else if name2 == "Bektur" {
        return false
    }
    
    return name1 < name2
})
 print(captainFirstTeam)

//Why are Swift’s closure parameters inside the braces?
//Closures take their parameters inside the brace to avoid confusing Swift: if we had written let payment = (user: String, amount: Int) then it would look like we were trying to create a tuple, not a closure, which would be strange.
//Having the parameter list inside the braces shows why the in keyword is so important – without that it’s hard for Swift to know where your closure body actually starts, because there’s no second set of braces.


//how to reduce the syntax

///How to use trailing closures and shorthand syntax

//we dont have to specify the type of the paraqmeters and return type

//1 reduce

let captainFirstTeam1 = team.sorted(by: { name1, name2 in
    if name1 == "Bektur" {
        return true
    } else if name2 == "Bektur" {
        return false
    }
    
    return name1 < name2
})

//2.reduce

//trailing closure syntax = whent one function accepts another function as a parameter
// remove by:

let captainFirstTeam2 = team.sorted { name1, name2 in
    if name1 == "Bektur" {
        return true
    } else if name2 == "Bektur" {
        return false
    }
    
    return name1 < name2
}

//in closures sometimes we dont need to use parameter names and in, insted of this use $0 and $1 as a parameter name and swift will aoutomaticly now what is the name of the parameters.


let captainFirstTeam3 = team.sorted {
    if $0 == "Bektur" {
        return true
    } else if $1 == "Bektur" {
        return false
    }
    
    return $0 < $1
}

//shorted syntax

let captainFirstTeam4 = team.sorted {
    return $0 > $1
}

print(captainFirstTeam4)

//in single line code we can remove return keyword

let captainFirstTeam5 = team.sorted { $0 > $1 }

print(captainFirstTeam5)

//there are no one way to use shart syntax

//filter function in array using trailing closure syntax

let bOnly = team.filter { $0.hasPrefix("B") } //it will run this code ($0.hasPrefix("B")) on the every item team array and create us new array.

print(bOnly)


//map function usage with array by using closure and trailing  syntax

let uppercasedTeam = team.map { $0.uppercased() } // -> this chank of code apply all elements of array.
print(uppercasedTeam)
//wnen we using a map() we dont have return same type of array. we can transfom different type of array

//Why does Swift have trailing closure syntax?
//Trailing closure syntax is designed to make Swift code easier to read, although some prefer to avoid it.

//When should you use shorthand parameter names?

///How to accept functions as parameters

//by using fucntion

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber) // make an array by using generateNumber func. function as a parameter.
print(newRolls)


//multiple trainling closures

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

///SUMMARY
/*
 We’ve covered a lot about closures in the previous chapters, so let’s recap:

 You can copy functions in Swift, and they work the same as the original except they lose their external parameter names.
 All functions have types, just like other data types. This includes the parameters they receive along with their return type, which might be Void – also known as “nothing”.
 You can create closures directly by assigning to a constant or variable.
 Closures that accept parameters or return a value must declare this inside their braces, followed by the keyword in.
 Functions are able to accept other functions as parameters. They must declare up front exactly what data those functions must use, and Swift will ensure the rules are followed.
 In this situation, instead of passing a dedicated function you can also pass a closure – you can make one directly. Swift allows both approaches to work.
 When passing a closure as a function parameter, you don’t need to explicitly write out the types inside your closure if Swift can figure it out automatically. The same is true for the return value – if Swift can figure it out, you don’t need to specify it.
 If one or more of a function’s final parameters are functions, you can use trailing closure syntax.
 You can also use shorthand parameter names such as $0 and $1, but I would recommend doing that only under some conditions.
 You can make your own functions that accept functions as parameters, although in practice it’s much more important to know how to use them than how to create them.
 Of all the various parts of the Swift language, I’d say closures are the single toughest thing to learn. Not only is the syntax a little hard on your eyes at first, but the very concept of passing a function into a function takes a little time to sink in.

 So, if you’ve read through these chapters and feel like your head is about to explode, that’s great – it means you’re half way to understanding closures!
 */


///CHECKPOINT 5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
//sort
let sordetLuckyNumberByDesendingOrder = luckyNumbers.sorted { $0 > $1 }
print(sordetLuckyNumberByDesendingOrder)

//map

//let mappedLuckyNumber = luckyNumbers.map(

//filter

let ismult = luckyNumbers.filter({ $0.isMultiple(of: 3)})
print(ismult)
