//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Gonzalo on 14/12/2021.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI elements
    @IBOutlet weak var diveImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diveImageView1?.image = #imageLiteral(resourceName: "DiceSix")
        //diveImageView1.alpha = 0.5
        
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    
    }


}

