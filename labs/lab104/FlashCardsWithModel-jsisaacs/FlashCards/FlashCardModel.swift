//
//  FlashCardModel.swift
//  FlashCards
//
//  Created by Josh Isaacson - Work on 8/28/17.
//  Copyright © 2017 A290. All rights reserved.
//

class FlashCardsModel {
    var questions =
        [0: "How much is 7+7?",
         1: "In what country is Timbuktu?",
         2: "What rotates when you ride a bike?"]
    
    var answers = [0: "14", 1: "Mali", 2: "Wheels"]
    
    var currentQuestionIndex = 0
    
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
}
