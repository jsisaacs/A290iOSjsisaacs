//
//  TabbedAppModel.swift
//  TabbedApp
//
//  Created by Josh Isaacson - Work on 9/18/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import Foundation

class TabbedAppModel {
    var questions =
        [0: "How much is 7+7?",
         1: "In what country is Timbuktu?",
         2: "What rotates when you ride a bike?"]
    
    var answers = [0: "14", 1: "Mali", 2: "Wheels"]
    
    var currentQuestionIndex = 0
    
    init() {
        
    }
    
    func getNextQuestion() -> String {
        
        currentQuestionIndex += 1
        
        if (currentQuestionIndex == questions.count) {
            currentQuestionIndex = 0
        }
        return questions[currentQuestionIndex]!
    }
    
    func getAnswer() -> String {
        return answers [currentQuestionIndex]!
    }
    
    func getCurrentQuestion() -> String{
        return questions[currentQuestionIndex]!
    }
    
    func setCurrrentQuestion(pString: String) {
        //TODO
    }
    
    func setCurrentAnswer(pString: String) {
        //TODO
    }
    
    //property variables for 2 operands
    var firstOperand: String = ""
    var secondOperand: String = ""
    
    var firstNum: Double = 0
    var secondNum: Double = 0
    
    var operation = "not set"
    
    var isSettingFirstOperand: Bool = true
    
    
    
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
