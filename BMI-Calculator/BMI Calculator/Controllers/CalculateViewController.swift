//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Gonzalo Olvera on 06/01/2022.
//  Copyright © 2022 Gonzalo Olvera. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    
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
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = String(calculatorBrain.getAdvice())
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

