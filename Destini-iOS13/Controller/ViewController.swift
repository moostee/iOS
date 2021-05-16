//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyBrain = StoryBrain()    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(_ questionNumber : Int = 0){
        storyLabel.text = storyBrain.stories[questionNumber].storyTitle
        choice1Button.setTitle(storyBrain.stories[questionNumber].choiceOne, for: .normal)
        choice2Button.setTitle(storyBrain.stories[questionNumber].choiceTwo, for: .normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let nextQuestion = storyBrain.getNextQuestion(userAnswer : sender.currentTitle!)
        updateUI(nextQuestion)
    }


}

