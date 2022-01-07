//
//  main.swift
//  OpcionalsDemo
//
//  Created by Gonzalo Olvera Monroy on 07/01/22.
//


/*
 
 1.- Force Unwrapping   optional!
 2- Check for nil value    if optional != nil {
                                optional!
                           }
 
 3.- Optional Binding   if let safeOptional = optional {
                            safeOptional
                        }
 
 4.- Nil Coalesing Operato   optional ?? defaultValue
 
 5.- Optional Chaining      optional?.property
                            optional?.method()
 
 */

struct MyOptional {
    var property = 123
    
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

// Optional Chaining
print(myOptional?.method())


// Nil Coalesing Operator
//let text: String = myOptional ?? "I am the default value"

//print(text)

// Optional Binding
/*
if let safeOptional = myOptional {
    let text: String = safeOptional
    let text2: String = safeOptional
    
    print(safeOptional)
    
} else {
    print("my optional was found to be nil")
}
 */





