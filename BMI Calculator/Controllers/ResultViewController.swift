//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mateo Ortiz on 22/02/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: BMI?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = bmi?.color
        bmiValueLabel.text = String(format: "%.1f", bmi?.value ?? 0.0)
        adviceLabel.text = bmi?.advice
        
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
