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
    
    weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!

    @IBAction func showQuestion(_ sender: Any) {
        // obtain a reference to the AppDelegate:
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        // the old UIApplication version API was:
        // self.appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        
        // from the AppDelegate, obtain a reference to the Model data:
        self.myFlashCardModel = self.appDelegate?.myFlashCardModel
        
        var lQuestion : String = self.myFlashCardModel!.getNextQuestion()
    }
    
    @IBAction func showAnswer(_ sender: Any) {
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

