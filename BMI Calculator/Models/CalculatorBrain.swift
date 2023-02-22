//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mateo Ortiz on 22/02/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(_ w: Float, _ h: Float) {
        let bmiValue = w/(pow(h, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
        
    }
}
