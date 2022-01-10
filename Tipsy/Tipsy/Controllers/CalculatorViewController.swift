//
//  ViewController.swift
//  Tipsy
//
//  Created by Gonzalo Olvera on 10/01/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var numberOfPeople = 2
    var totalBill = 0.0
    var resultBill = "0.0"

    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        
        let buttonTitleMinusPercentSign = String(buttonTitle.dropLast())
        
        let buttonTitleAsNumber = Double(buttonTitleMinusPercentSign)!
        
        tip = buttonTitleAsNumber / 100
        
        
       
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%0.f", sender.value)
        numberOfPeople = Int(sender.value)
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text ?? "0.0"
        
        if bill != "" {
            let tax = Double(bill)! * tip
            totalBill = (Double(bill)! + tax) / Double(numberOfPeople)
            
            resultBill = String(format: "%.2f", totalBill)
            
            print("El total de la cuenta es: \(resultBill)")
            self.performSegue(withIdentifier: "goToResult", sender: self)

        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.totalBill = resultBill
            destinationVC.split = numberOfPeople
            destinationVC.tip = Int(tip * 100)
            
        }
        
    }
}

