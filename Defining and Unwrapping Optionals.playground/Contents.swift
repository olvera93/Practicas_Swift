//var player1Username: String = nil
var player1Username: String? = nil

player1Username = "Gonzalo"

//var unwrappedP1Username = player1Username!

player1Username = nil

if player1Username != nil {
    print(player1Username!)
}

// Exercise

var studentsAndScore = ["Amy": 66, "James": 77, "Helen":99]

func highestScore(scores: [String: Int]) {
    
    let student1 = studentsAndScore["Amy"]!
    let student2 = studentsAndScore["James"]!
    let student3 = studentsAndScore["Helen"]!
    
    if student1 > student2 && student1 > student3 {
        print(student1)
    } else if student2 > student1 && student2 > student3 {
        print(student2)
    } else {
        print(student3)
    }
}

highestScore(scores: studentsAndScore)
