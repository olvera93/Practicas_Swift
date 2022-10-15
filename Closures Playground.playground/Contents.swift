
func forwards(s1:String, s2:String) -> Bool {
    return s1 > s2
}

let letters = ["H", "E", "X", "A"]

let sorted = letters.sorted(by: forwards)

print(sorted)


//let myColletions = letters.sorted(by: {s1, s2 -> Bool in return s1 < s2})

//print(myColletions)

let myColletions = letters.sorted(by: {$0 < $1})
print(myColletions)


var goldBars = 0


let unlockTreasureChest = {(inventory: inout Int) -> Void in  inventory += 100}

unlockTreasureChest(&goldBars)
print(goldBars)

func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void) {
    inventory -= 10
    completion(inventory)
}

print("You had \(goldBars) gold bars.")
spendTenGoldBars(from: &goldBars) { goldBars in
    print("You spent ten gold bars")
    print("You have \(goldBars) gold bars")
}

