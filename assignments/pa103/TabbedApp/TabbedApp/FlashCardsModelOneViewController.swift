//
//  FlashCardsModelViewController.swift
//  TabbedApp
//
//  Created by Josh Isaacson - Work on 9/18/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class FlashCardsModelViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let myTabbedAppModel = TabbedAppModel()
    
    // initially, no question has been asked:
    var aQuestionIsAsked = false
    
    
    @IBAction func showQuestion(_ sender: Any) {
        let lQuestion = myTabbedAppModel.getNextQuestion()
        self.questionLabel.text = lQuestion
        self.answerLabel.text = "( just try and guess... )"
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        self.answerLabel.text = myTabbedAppModel.getAnswer()
    }
    
    // two methods to handle button events:
    // "IBAction" tell Xcode to list these methods as "Available Actions"
    // and they can be connected using Interface Builder:
    /*@IBAction func showQuestion(_ sender: Any) {
     
     //get data from model:
     let lQuestion = myTabbedAppModel.getNextQuestion()
     self.questionLabel.text = lQuestion
     self.answerLabel.text = "( just try and guess... )"
     
     }
     @IBAction func showAnswer(_ sender: Any) {
     // get data from model:
     self.answerLabel.text = myTabbedAppModel.getAnswer()
     }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}
