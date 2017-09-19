//
//  BinCalcViewController.swift
//  TabbedApp
//
//  Created by Josh Isaacson - Work on 9/18/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class BinCalcViewController: UIViewController {
    
    //labels
    @IBOutlet weak var display: UILabel!
    
    let myTabbedAppModel = TabbedAppModel()
    
    //initially no number has been entered
    var numberIsBeingEntered: Bool = false
    
    //methods connecting the ViewController to the app's View
    @IBAction func aDigitIsPressed(_ sender: UIButton) {
        
        let num = sender.titleLabel!.text
        if num == "1" {
            if myTabbedAppModel.isSettingFirstOperand == true {
                myTabbedAppModel.firstOperand += "1"
                display.text = myTabbedAppModel.firstOperand
            }
            else {
                myTabbedAppModel.secondOperand += "1"
                display.text = myTabbedAppModel.secondOperand
            }
        }
        if num == "0" {
            if myTabbedAppModel.isSettingFirstOperand == true {
                myTabbedAppModel.firstOperand += "0"
                display.text = myTabbedAppModel.firstOperand
            }
            else {
                myTabbedAppModel.secondOperand += "0"
                display.text = myTabbedAppModel.secondOperand
            }
        }
    }
    
    @IBAction func anOperationIsPressed(_ sender: UIButton) {
        
        let operation = sender.titleLabel!.text
        if operation == "AC" {
            display.text = ""
            myTabbedAppModel.allClear()
        }
        if operation == "+" {
            display.text = ""
            myTabbedAppModel.setOperation(op: "+")
        }
        if operation == "-" {
            display.text = ""
            myTabbedAppModel.setOperation(op: "-")
        }
        if operation == "=" {
            let num = myTabbedAppModel.performOperation()
            display.text = String(num)
        }
        if operation == "x" {
            display.text = ""
            myTabbedAppModel.setOperation(op: "x")
        }
        if operation == "÷" {
            display.text = ""
            myTabbedAppModel.setOperation(op: "÷")
        }
        //when you want to use this operation, you must
        //choose your number, then click the ± button,
        //then click the = button to see the effect.
        if operation == "±" {
            display.text = ""
            myTabbedAppModel.setOperation(op: "±")
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
