
var goldBars2 = 0


func unlockTreasureChest(inventory: Int) -> Int {
    return inventory + 100
}

goldBars2 = unlockTreasureChest(inventory: goldBars2)
print(goldBars2)

goldBars2 = unlockTreasureChest(inventory: goldBars2)
print(goldBars2)

goldBars2 = unlockTreasureChest(inventory: goldBars2)
print(goldBars2)


func hiThere(_ fn: String,_ sn: String) {
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}

hiThere( "Fred", "George")


func display(_ s1: String, _ s2: String, score: Int = 0) {
    let name_score = s1 + " " + s2 + " " + String(score)
    print("Hello \(name_score)")
}

display("John", "Roberts")
display("John", "Roberts", score: 100)

func addTowInts(a: Int, b: Int) -> Int {
    return a + b
}

var mathFunction: (Int, Int) -> Int = addTowInts

print("Result: \(mathFunction(1, 2))")


// Exercise


var goldBars = 0

func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
    inventory += amount
}

incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars, by: 300)
print(goldBars)
incrementInventory(&goldBars, by: 50)
print(goldBars)
