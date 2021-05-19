//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Mustapha Omotunwase on 5/19/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var splitInfoLabel: UILabel!
    @IBOutlet weak var billAmountLabel: UILabel!
    
    var splitPercentage = 0
    var numberOfPersons = 0
    var amount : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountLabel.text = String(amount)
        splitInfoLabel.text = "Split between \(numberOfPersons)person(s) with \(splitPercentage)% tip"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
