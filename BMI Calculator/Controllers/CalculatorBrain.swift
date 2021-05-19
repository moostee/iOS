//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mustapha Omotunwase on 5/18/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMIValue(height : Float, weight : Float) {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case ..<18.5:
            print("underweight")
            bmi = BMI(value : bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5 ..< 24.9 :
            print("normal")
            bmi = BMI(value : bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        default:
            print("overweight")
            bmi = BMI(value : bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Not advice available"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
}
