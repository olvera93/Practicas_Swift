
struct Town {
    let name : String
    var citizens : [String]
    var resources : [String : Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        
        self.name = name
        self.citizens = citizens
        self.resources = resources
        
    }
    
    func fortify() {
        print("Defences increased!")
    }
}

var anotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts": 100])


var ghosTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Tunbleweed": 1])


anotherTown.citizens.append("Wilson")
ghosTown.fortify()
print(anotherTown.citizens)


// Exercise

func exercise() {
    
    // Define the User struct here
    struct User {
        let name : String
        var email : String?
        var followers : Int
        var isActive  : Bool
        
        init (name: String, email: String?, followers: Int, isActive: Bool) {
            
            self.name = name
            self.email = email
            self.followers = followers
            self.isActive = isActive
        }
        
        func logStatus() {
            if isActive == true {
                print("\(name) is working haard")
            } else {
                print("\(name) has left the earth")
            }
        }
    }
    
    print("\n")
    var richard = User(name: "Richard", email: "richard@gmail.com", followers: 10, isActive: false)
    
    richard.logStatus()
    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!)...")
    print("\(musk.name) has \(musk.followers) followers")
    
    // sometime later
    musk.isActive = false
    musk.logStatus()
    
    
}

exercise()

/* Initialasing

var myTown = Town()

print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of graid")

myTown.citizens.append("Keanu Reeves")
print(myTown.citizens.count)

myTown.fortify()
 */


