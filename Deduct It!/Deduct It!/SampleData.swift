//
//  SampleData.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 9/25/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import Foundation

final class SampleData {
    
    static func generateExpenseData() -> [Expense] {
        return [
            Expense(item: "Gas", date: "9/25/17", cost: 12.56),
            Expense(item: "Printing costs", date: "9/25/17", cost: 3.14),
            Expense(item: "Donation to American Red Cross", date: "9/26/17", cost: 12.56)
        ]
    }
}
