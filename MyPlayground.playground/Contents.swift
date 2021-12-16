// This is a comment

print("Hello World")


//String Interpolation

print("The result of 5 + 3 = \(5+3)")

// Variables
var a = 5
var b = 8

var c = a
a = b
b = c

print("The value of a is \(a)")
print("The value of b is \(b)")

//Array

var numbers = [45, 73, 195, 53]

var computedNumbers = [numbers[0]*numbers[1],numbers[1]*numbers[2], numbers[2]*numbers[3],numbers[3]*numbers[1]]

print(computedNumbers)

// Constants

let pi = 3.14159

var score = 0

score = 45
print(score)

// Random Int
let randomNumber = Int.random(in: 1...3)
print(randomNumber)

//Random Float
let randomNumberFloat = Float.random(in: 1..<3)
print(randomNumberFloat)

// Random password
let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

var a2 = "Gon"
    var b2 = "olve"
let password = a2 + alphabet[Int.random(in: 0...25)] + b2 //Replace this comment with your code.
   
    print(password)






