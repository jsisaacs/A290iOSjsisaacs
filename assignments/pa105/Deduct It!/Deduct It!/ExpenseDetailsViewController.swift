//
//  ExpenseDetailsViewController.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 9/30/17.
//  Copyright © 2017 A290/A590 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class ExpenseDetailsViewController: UITableViewController {
    var expense: Expense?
    
    @IBOutlet weak var expenseNameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var costTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SaveExpenseDetail",
            let expenseName = expenseNameTextField.text {
            //add category and change data type of date
            expense = Expense(cost: 10.00, name:expenseName, category: "category1", desc:"description")
            //(cost:Double, name:String, category:String, desc:String)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ExpenseDetailsViewController {
    @IBAction func cancelToExpensesViewController(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func saveExpenseDetail(_ segue: UIStoryboardSegue) {
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            expenseNameTextField.becomeFirstResponder()
        }
    }
}
