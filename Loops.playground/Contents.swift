import Foundation


let fruits: Set = ["Apple", "Pear", "Orange"]
let contacts = ["Adam": 123456789, "James":987654321, "Amy": 912837365]
let word = "supercalifragilisticexpialidociuos"
let halfOpenRange = 1..<5
let closedRange = 1...5

print("Array Fruits")
for fruit in fruits {
    print(fruit)
}

print("\n")
print("Dictionary")
for person in contacts {
    print(person.key)
}

print("\n")
print("Word")
for letter in word {
    print(letter)
}

print("\n")
for _ in halfOpenRange {
    print("Loop is running")
}


// While Loops

var now = Date().timeIntervalSince1970
let oneSecondFromNow = now + 1
//while now < oneSecondFromNow {
   // now = Date().timeIntervalSince1970
  //  print("waiting...")
//}

// Exercises Fibonacci

func fibonacci(n: Int) {
    
    var fibo: Array = [0]
    var countIndex = 0
    
    for _ in 1..<n {
        if fibo.count < 2 {
            fibo.append(1)
        } else {
            let result = (fibo[countIndex - 1] + fibo[countIndex])
            fibo.append(result)
        }
        countIndex += 1
    }
    print(fibo)
}

fibonacci(n: 10)
