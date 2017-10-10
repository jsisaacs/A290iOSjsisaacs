//
//  SampleData.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 9/30/17.
//  Copyright © 2017 A290/A590 Fall 2017 - jsisaacs. All rights reserved.
//

import Foundation

final class SampleData {
    
    
    static func generateExpenseData() -> [Expense] {
        return [
            //(cost:Double, name:String, category:String, date:String)
            Expense(cost:10.00, name:"Exercise 1", category:"Category 1", date:"09/30/2017"),
            Expense(cost:10.00, name:"Exercise 2", category:"Category 2", date:"09/30/2017"),
            Expense(cost:10.00, name:"Exercise 3", category:"Category 3", date:"09/30/2017")
        ]
    }
}
