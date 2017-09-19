//
//  TabbedFlashCardsTwoViewController.swift
//  TabbedApp
//
//  Created by Josh Isaacson - Work on 9/18/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class TabbedFlashCardsTwoViewController: UIViewController {
    
    // the reference to our AppDelegate:
    var appDelegate: AppDelegate?
    // the reference to our data model:
    var myTabbedAppModel: TabbedAppModel?
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBAction func buttonOkAction(sender: AnyObject) {
        print ("self.questionTextField.text = \(self.questionTextField.text)")
        print ("self.answerTextField.text = \(self.answerTextField.text)")
        
    }
    
    func buttonOKAction() {
        //TODO
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.questionTextField.text = "Q"
        self.answerTextField.text = "A"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}
