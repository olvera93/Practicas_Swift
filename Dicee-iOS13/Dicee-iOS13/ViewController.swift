//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Gonzalo Olvera on 14/12/2021.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI elements
    @IBOutlet weak var diveImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    var diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diveImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }
    
}

