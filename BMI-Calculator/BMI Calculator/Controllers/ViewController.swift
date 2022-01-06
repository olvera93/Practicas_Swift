//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Gonzalo Olvera on 06/01/2022.
//  Copyright © 2022 Gonzalo Olvera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
        
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(Int(sender.value))
        let weight = String(Int(sender.value))
        weightLabel.text = "\(weight) Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
            
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = (weight) / pow(height, 2)
        
        print(bmi)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.f", bmi)
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
}

