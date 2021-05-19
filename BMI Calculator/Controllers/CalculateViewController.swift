//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiString = "0.0"
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let doubleStr = String(format: "%.0f", sender.value)
        weightValueLabel.text =  "\(doubleStr)kg"
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let doubleStr = String(format: "%.2f", sender.value)
        heightValueLabel.text = "\(doubleStr)m"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height  = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMIValue(height: height, weight : weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = calculatorBrain.getBMIValue()
            destinationVc.adviceText = calculatorBrain.getAdvice()
            destinationVc.color = calculatorBrain.getColor()
        }
    }
}

