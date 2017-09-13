//
//  FirstViewController.swift
//  TabbedFlashCards
//
//  Created by Josh Isaacson - Work on 9/8/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // the reference to our AppDelegate:
    var appDelegate: AppDelegate?
    // the reference to our data model:
    var myFlashCardModel: FlashCardModel?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!

    @IBAction func showQuestion(_ sender: UIButton) {
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myFlashCardModel = self.appDelegate?.myFlashCardModel
        let lQuestion : String = self.myFlashCardModel!.getNextQuestion()
        self.questionLabel.text = lQuestion
        self.answerLabel.text = "( just try and guess... )"
        
            }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myFlashCardModel = self.appDelegate?.myFlashCardModel
        self.answerLabel.text = myFlashCardModel!.getAnswer()
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

