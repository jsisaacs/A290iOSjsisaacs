//
//  ExpenseDetailsViewController.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 9/30/17.
//  Copyright © 2017 A290/A590 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class ExpenseDetailsViewController: UITableViewController {
    var expense: ExpenseUnit?
    
    @IBOutlet weak var expenseNameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var costTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        if segue.identifier == "SaveExpenseDetail",
            let expenseName = expenseNameTextField.text {
            expense = ExpenseUnit(cost: 10.00, name: expenseName, category:"Category 1", date:"10/8/2017")
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ExpenseDetailsViewController {
    @IBAction func cancelToExpenseViewController(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func saveExpenseDetail(_ segue: UIStoryboardSegue) {
        
        guard let ExpenseDetailsViewController = segue.source as? ExpenseDetailsViewController,
            let expense = ExpenseDetailsViewController.expense else {
                return
        }
        
        // add the new player to the players array
        //expenses.append(expense)
        
        // update the tableView
        //let indexPath = IndexPath(row: expenses.count - 1, section: 0)
        //tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            expenseNameTextField.becomeFirstResponder()
        }
    }
}
