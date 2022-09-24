let numberPlate = "WW87GP"
for character in numberPlate {
    print("Character is \(character)")
}

var firstDice = 0
var secondDice = 0

repeat {
    firstDice = Int.random(in: 1...6)
    secondDice = Int.random(in: 1...6)
} while firstDice != secondDice

print("You rolled a double \(firstDice)")



// Game

let levels = 10
let freeLevels = 4
let bonusLevel = 3

for level in 1...levels {
    if level == bonusLevel {
        print("Its a bonus level \(bonusLevel)")
        continue
    }
    print("Current level is \(level)")

    if level == freeLevels {
        print("You have played all \(freeLevels) free levels")
        break
    }
    
}
