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
    @IBAction func aDigitIsPressed(_ sender: UIButton) {
        
        let num = sender.titleLabel!.text
        if num == "1" {
            if theModel.isSettingFirstOperand == true {
                theModel.firstOperand += "1"
                display.text = theModel.firstOperand
            }
            else {
                theModel.secondOperand += "1"
                display.text = theModel.secondOperand
            }
        }
        if num == "0" {
            if theModel.isSettingFirstOperand == true {
                theModel.firstOperand += "0"
                display.text = theModel.firstOperand
            }
            else {
                theModel.secondOperand += "0"
                display.text = theModel.secondOperand
            }
        }
    }
    
    @IBAction func anOperationIsPressed(_ sender: UIButton) {
    
        let operation = sender.titleLabel!.text
        if operation == "AC" {
            display.text = ""
            theModel.allClear()
        }
        if operation == "+" {
            display.text = ""
            theModel.setOperation(op: "+")
        }
        if operation == "-" {
            display.text = ""
            theModel.setOperation(op: "-")
        }
        if operation == "=" {
            let num = theModel.performOperation()
            display.text = String(num)
        }
        if operation == "x" {
            display.text = ""
            theModel.setOperation(op: "x")
        }
        if operation == "÷" {
            display.text = ""
            theModel.setOperation(op: "÷")
        }
        //when you want to use this operation, you must
        //choose your number, then click the ± button, 
        //then click the = button to see the effect.
        if operation == "±" {
            display.text = ""
            theModel.setOperation(op: "±")
        }
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

