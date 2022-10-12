import Cocoa

/// FOR LOOP
let platforms = ["iOS", "macOS", "tbOS", "watchOS"]

for os in platforms {
    print("Swift works greate on \(os)!")
}

for i in 1...12 {
    print("5 * \(i) is \(5 * i)")
}

//nested loops


for a in 1...12 {
    print("There is \(a) times table")
    
    for j in 1...12 {
        print("   \(j) x \(a) is \(j * a)")
    }
    
}

//to exclude last number

for l in 1..<5 {
    print("COunting from 1 up to 4: \(l)")
}


//when you dont need to use loop variable

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent!")
}
print(names[0])
print(names[1...3])
print(names[1...])
//That carries a small risk, though: if our array didn’t contain at least four items then 1...3 would fail. Fortunately, we can use a one-sided range to say “give me 1 to the end of the array”, like this:
print("Haters gonna ")
for _ in 1...4 {
    print("hate")
}


/// WHILE LOOP

var countdown = 10

while countdown > 0 {
    print("\(countdown)")
    countdown -= 1
}

print("Blast off!")

//to get some random number

let id = Int.random(in: 1...1000)
print(id)
print(id)

let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical Hit!")

//while loops can loop until any arbitrary condition becomes false, which allows them until we tell them to stop.

var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

//let bottles = 10
//while bottles > 0 {
//    bottles -= 2
//    print("\(bottles) green bottles.")
//}
var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}

var speed = 50
while speed <= 55 {
    print("Accelerating to \(speed)")
    speed += 1
}

///USE BREAK AND CONTINUE

//countinue
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in  filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

//break

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 200 {
            break
        }
    }
}

print(multiples)

let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }

    count += 1
}

print("You had \(count) scores before you got 0.")

for i in 1...15 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("\(i) is a multiple of both 3 and 5.")
        }
    }
}


//CHECKPOINT

for i in 1...100 {
    if i.isMultiple(of: 3) {
        if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
            print("FizzBuzz")
        } else {
            print("Fizz")
        }
           
    } else if i.isMultiple(of: 5) {
        if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
            print("FizzBuzz")
        } else {
            print("Buzz")
        }
    }  else {
        print(i)
    }
}
