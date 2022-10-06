var weeklyTemperatures: [String: Int] = [:]

weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]

weeklyTemperatures["Monday"]! += 20

print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)°F")

if let temperature = weeklyTemperatures["Sunday"] {
    print("The temperature on Monday is \(temperature) °F")
} else {
    weeklyTemperatures["Sunday"] = 100
    print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!) °F")
}

if weeklyTemperatures.count == 7 {
    print("You have access to the weather forecast of the whole week.")
      //weeklyTemperatures = [:]
      print("Reset weekly temperatures for next week!")
}


for (weekDay, temperature) in weeklyTemperatures {
    print("\(weekDay) - \(temperature)")
}


// Exercises 2

let levelScores = [10, 20, 30, 40, 50, 60, 70]

for (level, score) in levelScores.enumerated() {
    print("The score of level \(level + 1 ) is \(score)")
}

var gameScore = 0
for game in levelScores {
    gameScore += game
}

print("The output should display that the final game score is \(gameScore)")


let days = ["Monday", "Tuesday", "Wednesday","Thursday", "Friday", "Saturday", "Sunday"]

let temperatures = [70, 75, 80, 85, 90, 95, 100]

for index in 0...6 {
    print("The temperature on \(days[index]) is \(temperatures[index]) °F")
}

let emptyDictionary: [String: Int] = [:]
if emptyDictionary.count == 0 {
  print("The dictionary is empty!")
} else {
  print("The dictionary isn’t empty!")
}

