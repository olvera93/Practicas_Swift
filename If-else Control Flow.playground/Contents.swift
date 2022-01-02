
// With If-else
func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye")
    } else if loveScore > 40 && loveScore <= 80 {
        print("You go together like Coke and Mentos")
    } else if loveScore < 40 {
        print("You'll be forever alone")
    }
}

loveCalculator()

// Exercise


/*var aYear = Int(readLine()!)!

func isLeap(year: Int) {
    
    if year % 4 == 0 {
        print("Is a leap year")
    } else if year % 100 == 0 {
        print("Is not a leap year")
    } else if year % 400 == 0 {
        print("It will be a leap year")
    }
}

isLeap(year: aYear)*/
 
// With Swith

func loveCalculator2() {
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
    case 80...100:
        print("You love each other like Kanye loves Kanye")
        
    case 40...80:
        print("You go together like Coke and Mentos")
        
    case ...40:
        print("You'll be forever alone")
    
    default:
        print("Error lovescore is out of range.")
    }
}

loveCalculator2()

// Exercise

/*var aNumber = Int(readLine()!)!

func dayOfTheWeek(day: Int) {
    
    switch day {
    case 1:
        print("Monday")
    case 2:
        print("Tuesday")
    case 3:
        print("Wednesday")
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
    case 6:
        print("Saturday")
    case 7:
        print("Sunday")
        
    default:
        print("Error daysOfWeek is out of range.")
    }
}

dayOfTheWeek(day: aNumber)*/


// Dictionary example

var dict = ["example": "dadasfasf", "example2": "sdadsad"]

var dict2 : [String: Int] = ["Gonzalo": 139437, "Philipp": 210921]

// Exercise Dictionaries

func exercise() {
    var stockTickers: [String: String] = ["APPL": "Apple Int", "HOG": "Harley-Davidson Int", "BOOM":"Dynamic Materials", "HEINY":"Heineken", "BEN":"Franklin Resources Inc"]
    
    stockTickers = ["WORK": "Slack Technologies Inc"]
    stockTickers["BOOM"] = "DMC Global Inc"
    
    
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
}

exercise()
