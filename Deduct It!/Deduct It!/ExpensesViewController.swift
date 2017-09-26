//
//  ExpensesViewController.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 9/25/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class ExpensesViewController: UITableViewController {
    
    //MARK: - Properties
    var expenses = SampleData.generateExpenseData()
}
    
    //MARK: - UITableViewDataSource
extension ExpensesViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    override func tableView(_ tableView: UITableView,
                                cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpenseCell", for: indexPath)
            
        let expense = expenses[indexPath.row]
        cell.textLabel?.text = expense.item
        cell.detailTextLabel?.text = expense.date
        return cell
    }
}

