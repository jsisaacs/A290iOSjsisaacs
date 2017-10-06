//
//  Expense.swift
//  
//
//  Created by Josh Isaacson - Work on 10/4/17.
//

import Foundation

class Expense {
    var cost : Double
    var name : String
    var category : String
    var description : String
    var expenses : [Expense] = []
    
    
    init(cost:Double, name:String, category:String, description:String) {
        self.cost = cost
        self.name = name
        self.category = category
        self.description = description
        
    }
    
    //Expense Management
    /*
     An object of type Expense has the following attributes:
     cost, name, category, description
     
     newExpense <-\ These can be combined eventually
     addExpense <--\
     deleteExpense
     getExpense
     */

    //newExpense is called in conjunction with addExpense.  When the user
    //fills out the whole Expense Form and clicks the done button, this method
    //and the addExpense method are ran
    func newExpense (cost:Double, name:String, category:String, description:String) {
         //output = Expense(cost:cost, name:name, category:category, description:description)
        var output : Expense = Expense.init(cost:cost, name:name, category:category, description:description)
    }
    
    //addExpense takes in an Expense object and adds it to
    //the expenses array
    func addExpense (output:Expense) {
        //expenses.append(output)
    }
    
    //deleteExpense takes in an integer associated with the array position of
    //the expense to be deleted from the expenses array
    func deleteExpense (position:Int) {
        //expenses.remove(at: position)
    }
    
    //getExpense returns an Expense at a particular position in the array expenses
    func getExpense (position:Int) {//-> Expense {
        //return exepenses[position]
    }
}

var expenseObj = Expense(cost:10.00, name:"name", category:"category", description:"description")

newExpense(cost:10.00, name:"name", category:"category", description:"description")
