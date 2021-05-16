//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var storyTitle : String
    var choiceOne : String
    var choiceTwo : String
    var choiceOneDestination : Int
    var choiceTwoDestination : Int
    
    init(title : String, choice1 : String,  choice1Destination : Int,choice2 : String, choice2Destination : Int) {
        storyTitle = title
        choiceOne = choice1
        choiceTwo = choice2
        choiceOneDestination = choice1Destination
        choiceTwoDestination = choice2Destination
    }
}
