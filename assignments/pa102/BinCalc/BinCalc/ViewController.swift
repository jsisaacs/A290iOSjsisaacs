//
//  ViewController.swift
//  BinCalc
//
//  Created by Josh Isaacson - Work on 9/2/17.
//  Copyright © 2017 A290. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //labels
    @IBOutlet weak var display: UILabel!
    
    let theModel = CalculatorModel()
    
    //initially no number has been entered
    var numberIsBeingEntered: Bool = false
    
    //methods connecting the ViewController to the app's View
    @IBAction func aDigitIsPressed(_ sender: Any) {

        
    }
    
    @IBAction func anOperationIsPressed(_ sender: Any) {
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

