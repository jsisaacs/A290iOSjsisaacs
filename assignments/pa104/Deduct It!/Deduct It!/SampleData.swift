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
            Expense(item: "Expense1", date: "09/30/2017", cost: 14.75),
            Expense(item: "Expense2", date: "09/30/2017", cost: 14.75),
            Expense(item: "Expense3", date: "09/30/2017", cost: 14.75)
        ]
    }
}
