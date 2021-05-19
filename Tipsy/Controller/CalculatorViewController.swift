//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    
    var percentage : Int = 0
    var numberOfPersons : Int = 1
    var tipsyBrain = TipsyBrain()
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        var buttonName = sender.currentTitle!
        buttonName.remove(at: buttonName.index(before: buttonName.endIndex))
        
        percentage = Int(buttonName)!
        print(percentage)
        switch buttonName {
        case "0":
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        case "10":
            tenPctButton.isSelected = true
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
        default:
            twentyPctButton.isSelected = true
            tenPctButton.isSelected = false
            zeroPctButton.isSelected = false
        }
        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f",sender.value)
        numberOfPersons = Int(sender.value)
    }
    
    @IBAction func calculateBill(_ sender: UIButton) {
        let value = billTextField.text ?? "0.00"
        let tA = Float(value)!
        tipsyBrain.getBill(numberOfPersons: numberOfPersons, totalAmount: tA, tipPercentage: percentage)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.amount = tipsyBrain.getAmountPerPerson()
        destinationVC.numberOfPersons = tipsyBrain.getNumberOfPersons()
        destinationVC.splitPercentage = tipsyBrain.getTipPercentage()
    }
}

