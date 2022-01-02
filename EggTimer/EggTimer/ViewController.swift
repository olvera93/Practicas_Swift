//
//  ViewController.swift
//  EggTimer
//
//  Created by Gonzalo Olvera on 02/01/2022

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    var timer = Timer()
    // Dictionary
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var totalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var eggDone: UILabel!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        
        timer.invalidate()
    
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        eggDone.text = hardness
        
       timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        
        
        if secondsPassed <= totalTime {
            
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            
            secondsPassed += 1
        } else {
            timer.invalidate()
            eggDone.text = "DONE!"
            playSound()
        }
    }
    
    
    func playSound() {
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }
    
    
    
}
