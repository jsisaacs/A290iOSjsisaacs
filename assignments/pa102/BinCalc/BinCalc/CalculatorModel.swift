//
//  CalculatorModel.swift
//  BinCalc
//
//  Created by Josh Isaacson - Work on 9/2/17.
//  Copyright © 2017 A290. All rights reserved.
//

import Foundation

class CalculatorModel {
    
    //property variables for 2 operands
    var firstOperand: String = ""
    var secondOperand: String = ""
    
    var firstNum: Double = 0
    var secondNum: Double = 0
    
    var operation = "not set"
    
    var isSettingFirstOperand: Bool = true
    
    //initalizes the model
    init() {
        
    }
    
    func setFirstOperand() {
        
        var total: Double = 0
        var counter: Double = 1
        
        let charArray = firstOperand.characters.reversed()
        
        for char in charArray {
            if char == "1" {
                total += counter
            }
            counter *= 2
            
        }
        firstNum = total
        
        
    }
    
    func setSecondOperand() {
        
        var total: Double = 0
        var counter: Double = 1
        
        let charArray = secondOperand.characters.reversed()
        
        for char in charArray {
            if char == "1" {
                total += counter
            }
            counter *= 2
            
        }
        secondNum = total
    }
    
    func setOperation(op: String) {
        
        operation = op
        
        isSettingFirstOperand = false
        
    }
    
    func performOperation() -> Double {

        print(firstNum)
        print(secondNum)
        
        setFirstOperand()
        setSecondOperand()
        
        isSettingFirstOperand = true
        
        if operation == "not set" {
            allClear()
            return firstNum
        }
        if operation == "+" {
            allClear()
            return firstNum + secondNum
        }
        if operation == "-" {
            allClear()
            return firstNum - secondNum
        }
        if operation == "x" {
            allClear()
            return firstNum * secondNum
        }
        if operation == "÷" {
            allClear()
            return firstNum / secondNum
        }
        if operation == "±" {
            firstNum = firstNum * -1.0
            return firstNum
        }
        allClear()
        return firstNum
    }
    
    func allClear() {
        isSettingFirstOperand = true
        firstOperand = ""
        secondOperand = ""
        operation = "not set"
    }
}










