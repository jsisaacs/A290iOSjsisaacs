//
//  StatisticsViewController.swift
//  DeductIt
//
//  Created by Josh Isaacson - Work on 10/13/17.
//  Copyright © 2017 Josh Isaacson. All rights reserved.
//

import UIKit

class StatisticsViewController: UIViewController {
    @IBOutlet weak var totalSpentLabel: UILabel!
    @IBOutlet weak var numberOfExpensesLoggedLabel: UILabel!
    @IBOutlet weak var mostCommonCategoryLabel: UILabel!
    
    /*
    func totalSpent(expenses:[Expenses]) {
        //add all elements of elements.cost
        //totalSpentLabel = addAll(expenses.cost)
    }
    
    func numberOfExpenses(expenses:[Expense]) {
        //get the number of elements in the array expenses
    }
    
    func mostCommonCategory(expenses:[Expense]) {
        //return whichever expense.category is most common
    }
     */

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
