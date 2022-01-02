
func greeting() {
    print("Hello")
    
    func greeting2() {
        print("Hey")
    }
    
    greeting2()
    
}

greeting()


//var myAge : String = "Three"


func greeting3(whoToGreet: String) {
    print("Hello \(whoToGreet)")
}

greeting3(whoToGreet: "Gonzalo")

// Exercise 1

func calculator() {
    let a = Int(readLine()!)! // First input
    let b = Int(readLine()!)! // Second input
    
    add(n1: a, n2: b)
    subtract(n1: a, n2: b)
    multiply(n1: a, n2: b)
    divide(n1: a, n2: b)
}

func add(n1: Int, n2: Int) {
    print(n1 + n2)
}

func subtract(n1: Int, n2: Int){
    print(n1 - n2)
}

func multiply(n1: Int, n2: Int) {
    print(n1 * n2)
}

func divide(n1: Int, n2: Int) {
    print(n1 / n2)
}
