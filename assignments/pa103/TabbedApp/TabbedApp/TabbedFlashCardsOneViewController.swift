//
//  TabbedFlashCardsOneViewController.swift
//  TabbedApp
//
//  Created by Josh Isaacson - Work on 9/18/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class TabbedFlashCardsOneViewController: UIViewController {
    
    // the reference to our AppDelegate:
    var appDelegate: AppDelegate?
    // the reference to our data model:
    var myTabbedAppModel: TabbedAppModel?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func showQuestion(_ sender: UIButton) {
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myTabbedAppModel = self.appDelegate?.myTabbedAppModel
        let lQuestion : String = self.myTabbedAppModel!.getNextQuestion()
        self.questionLabel.text = lQuestion
        self.answerLabel.text = "( just try and guess... )"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        self.myTabbedAppModel = self.appDelegate?.myTabbedAppModel
        self.answerLabel.text = myTabbedAppModel!.getAnswer()
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
