//
//  main.swift
//  Protocols and Delegates
//
//  Created by Gonzalo Olvera Monroy on 11/01/22.
//


protocol AdvancedLifeSupport {
    
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?

    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
    
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compression, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds.")
    }
    
    
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeegGuees")
    }
    
    func useElectricDrill(){
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let gonzalo = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
