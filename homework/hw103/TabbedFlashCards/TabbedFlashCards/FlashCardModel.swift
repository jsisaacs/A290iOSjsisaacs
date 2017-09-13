//
//  FlashCardModel.swift
//  TabbedFlashCards
//
//  Created by Josh Isaacson - Work on 9/10/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//
import Foundation

class FlashCardModel {
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
        
        if (currentQuestionIndex >= questions.count) {
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
}
