//
//  FlashCardsController.swift
//  FlashCards
//
//  Created by Josh Isaacson - Work on 8/23/17.
//  Copyright © 2017 A290. All rights reserved.
//

// we need to import the UIKit framework,
// otherwise Swift wouldn't know about UIVewController, etc.
import UIKit

// a subclass of the UIVewController's class:
class FlashCardsController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let myFlashCardsModel = FlashCardsModel()
    
    // initially, no question has been asked:
    var aQuestionIsAsked = false
    
    
    @IBAction func showQuestion(_ sender: Any) {
        let lQuestion = myFlashCardsModel.getNextQuestion()
        self.questionLabel.text = lQuestion
        self.answerLabel.text = "( just try and guess... )"
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        self.answerLabel.text = myFlashCardsModel.getAnswer()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

