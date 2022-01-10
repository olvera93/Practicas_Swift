//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Gonzalo Olvera Monroy on 10/01/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalBill: String?
    var tip: Int?
    var split: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalBill
        settingsLabel.text = "Split between \(split!) people, with \(tip!)% tip."
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
    
        self.dismiss(animated: true, completion: nil)
    }

}
