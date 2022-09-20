let day = "Monday"

let dailyTemperature = 75

//print("The temperature on \(day) is \(dailyTemperature)")

var temperature = 70
temperature = 80
//print("The temperature on \(day) is \(temperature)")

let weeklyTemperature = 75


// Operators

let levelScore = 10
var gameScore = 0

gameScore += levelScore

//print("The game's score \(gameScore)")

var levelBonusScore = 10.0
levelBonusScore = 20

//print("The level's bonus score is \(levelBonusScore)")

gameScore += Int(levelBonusScore)
//print("The game's final score is \(gameScore)")

let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10

let levelScoreDifference = levelHighestScore - levelLowestScore
let levelAverageScore = Float(levelScoreDifference) / Float(levelScore)

//print("The level's average score is \(levelAverageScore)")


// Strings

let hour = "6"
let minutes = "15"
let period = "PM"

var time = hour + ":" + minutes + " " + period
print("It is \(time) on \(day)")

let timezone = "PST"

time += " \(timezone)"
print("It is \(time) on \(day)")

let shortDay = day.prefix(3)
print("Today is \(shortDay)")
print("It is \(time) on \(shortDay)")

