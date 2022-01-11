//
//  main.swift
//  Protocols Demo
//
//  Created by Gonzalo Olvera Monroy on 11/01/22.
//

protocol CanFly {
    func fly()
}


class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
    
    
    
}


class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
    
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
        
    }
    
}

struct Airplane: CanFly {
    
    func fly() {
        print("The airplane use its engine to lift off into the air.")
    }
    
}

let myEagle = Eagle()
let myPeguin = Penguin()
let myPlane = Airplane()
myEagle.fly()
myPlane.fly()
let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)

