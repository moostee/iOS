//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Mustapha Omotunwase on 5/19/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct TipsyBrain {
    var tipsy : Tipsy?
    
    mutating func getBill(numberOfPersons : Int, totalAmount : Float, tipPercentage : Int){
        let tip = totalAmount * (Float(tipPercentage) / Float(100))
        let newAmount = totalAmount + tip
        let billPerPerson = newAmount / Float(numberOfPersons)
        print(billPerPerson)
        tipsy = Tipsy(numberOfPersons: numberOfPersons, tipPercentage: tipPercentage, totalAmount: billPerPerson)
    }
    
    func getNumberOfPersons() -> Int {
        return tipsy?.numberOfPersons ?? 0
    }
    
    func getAmountPerPerson() -> Float {
        return tipsy?.totalAmount ?? 0.00
    }
    
    func getTipPercentage() -> Int {
        return tipsy?.tipPercentage ?? 0
    }
}
