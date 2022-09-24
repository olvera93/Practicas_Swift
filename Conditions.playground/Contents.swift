let feeApp = true

if feeApp == true {
    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features")
}

let morningTemperature = 70
let eveningTemperature = 80

if morningTemperature < eveningTemperature {
    print("Hello")
} else {
    print("JOl")
}

let temperatureDegree = "Fahrenheit"

if temperatureDegree == "Fahrenheit" {
    print("You use fahrenheit")
} else {
    print("You use celsius")
}


if temperatureDegree == "Fahrenheit" || temperatureDegree == "Celsius"{
    print("You use fahrenheit or Celsius")
} else {
    print("You use nothing")
}

switch temperatureDegree {
case "Fahrenheit": print("The weather app is configured for the US.")
case "Celsius": print("The weather app is configured for Europe.")
default: print("The weather app has un unknown configuration.")
}
