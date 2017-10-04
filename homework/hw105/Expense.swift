//
//  Expense.swift
//  
//
//  Created by Josh Isaacson - Work on 10/4/17.
//

import Foundation

class Expense {
    var cost : Double
    var name : String
    var category : String
    var description : String
    
    init(cost:Double, name:String, category:String, description:String) {
        this.cost = cost
        this.name = name
        this.category = category
        this.description = description
    }
}
