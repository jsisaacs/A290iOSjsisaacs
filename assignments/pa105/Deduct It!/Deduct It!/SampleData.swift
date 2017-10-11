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
            Expense(cost: 10.00, name:"name 1", category: "category 1", desc:"description"),
            Expense(cost: 12.00, name:"name 2", category: "category 2", desc:"description"),
            Expense(cost: 14.00, name:"name 3", category: "category 3", desc:"description"),
        ]
    }
}
