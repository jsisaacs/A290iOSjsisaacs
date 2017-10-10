//
//  ExpensesViewController.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 9/30/17.
//  Copyright © 2017 A290/A590 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class ExpensesViewController: UITableViewController {
    var expenses = SampleData.generateExpenseData()
    
    
}

extension ExpensesViewController {
    @IBAction func cancelToExpensesViewController(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func saveExpenseDetail(_ segue: UIStoryboardSegue) {
        guard let expenseDetailsViewController = segue.source as? ExpenseDetailsViewController,
            let expense = expenseDetailsViewController.expense else {
                return
        }
        
        //add the new expense to the expenses array
        expenses.append(expense)
        
        //update the table view
        let indexPath = IndexPath(row: expenses.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExpenseCell",
                                                 for: indexPath) as! ExpenseCell
        
        let expense = expenses[indexPath.row]
        cell.expense = expense
        return cell
    }
}
