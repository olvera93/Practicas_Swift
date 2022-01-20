import Foundation

class Animal {
    var name: String
    
    init(_ n: String) {
        name = n
    }
}

class Human: Animal {
    
    func code() {
        print("Typing away..")
    }
    
}

struct Fish {
    
    func breathUnderWater() {
        print("Breathing under water.")
    }
    
}

let gonzalo = Human("Gonzalo")
let jack = Human("Jack")
let nemo = Fish()
let num: NSNumber = 12
let word: NSString = "abc"

let neighbours: [NSObject] = [num, word]

func findNemo(from animals:  [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish
            fish.breathUnderWater()
        }
    }
}


if let fish = neighbours[1] as? Fish {
    fish.breathUnderWater()
} else {
    print("Casting Fail")
}


