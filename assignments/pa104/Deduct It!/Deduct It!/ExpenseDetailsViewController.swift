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
            expense = Expense(item: expenseName, date: "9/30/2017", cost: 10.00)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ExpenseDetailsViewController {
    @IBAction func cancelToPlayersViewController(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue) {
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            expenseNameTextField.becomeFirstResponder()
        }
    }
}
