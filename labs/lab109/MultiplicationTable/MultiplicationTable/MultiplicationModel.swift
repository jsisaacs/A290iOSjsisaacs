//
//  MultiplicationModel.swift
//  MultiplicationTable
//
//  Created by Josh Isaacson - Work on 9/20/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import Foundation

class MultiplicationModel {
    
    var firstNum = 0.0;
    var secondNum = 0.0;
    
    func multiply(firstNum: Double, secondNum: Double) -> Double {
        let output = firstNum * secondNum
        return output
    }
}
