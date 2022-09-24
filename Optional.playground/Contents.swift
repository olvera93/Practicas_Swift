var aValue: Int?

if let aValue = aValue {
    print(aValue)
} else {
    print("No value")
}

let value:Int? = 5

print(value!)


var password = "1234"
let passcode:Int? = Int(password)
password = "hello world"
if let code = Int(password) {
    print("The passcode of the app is \(code)")
} else {
    print("Invalid passcode!")
}

let accessCode: Int

if let code = Int(password) {
    accessCode = code
} else {
    accessCode = 1111
}
print("The passcode of the app is \(accessCode)")

let firstPassword = "Hello"
let secondPassword = "world"

if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print("The first passcode of the app is \(firstPasscode) and the second passcode of the app is \(secondPasscode)")
} else {
    print("Invalid passcodes")
}

let firstAccessCode: Int
let secondAccesCode: Int
if let firsPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    firstAccessCode = firsPasscode
    secondAccesCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccesCode = 2222
}
print("The first passcode of the app is \(firstAccessCode) and the second of the app is \(secondAccesCode)")
