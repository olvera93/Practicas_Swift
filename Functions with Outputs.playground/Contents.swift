
func greeting(name : String) -> Bool {
    if name == "Gonzalo" || name == "Jack Bauer" {
        return true
    } else {
        return false
    }
}

var doorShouldOpen = greeting(name: "Gonzalo")

print(doorShouldOpen)

// Exercise

func isOdd(n: Int) -> Bool {
    if n % 2 == 0 {
        return false
    } else {
        return true
    }
}

isOdd(n: 5)

// Immutability
struct Town {
    let name : String
    var citizens : [String]
    var resources : [String : Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        
        self.name = name
        self.citizens = citizens
        self.resources = resources
        
    }
    
   mutating func hsversRice() {
        resources["Rice"] = 100
    }
}

var myTown = Town(name: "Gonzalaland", citizens: ["Gonzalo","Jack Bauer"], resources: ["Wool":75])

myTown.citizens.append("Keanu Reeves")

print("People of \(myTown.name): \(myTown.citizens)")

myTown.hsversRice()
print(myTown.resources)
