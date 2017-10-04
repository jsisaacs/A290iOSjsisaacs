//
//  Model.swift
//  
//
//  Created by Josh Isaacson - Work on 10/4/17.
//

//Encode and decode for all data
//Lecture111 file storage

import Foundation

class Model {
    //Settings
    /*
     setCurrency
     getCurrency
     setName
     getName
     setAddress
     getAddress
     wipeAllData
     */

    var currency : String
    var name : String
    var address : String

    //setCurrency sets the currency
    func setCurrency (setCurrency:String) {
        currency = setCurrency
    }

    //getCurrency gets the value for currency
    func getCurrency () -> String {
        return currency
    }
    
    //setName sets the users name
    func setName(userName:String=) {
        name = userName
    }
    
    //getName gets the name
    func getName() -> String {
        return name
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

    var cost : Double
    var name : String
    var category : String
    var description : String
    var expenses : Expense = []

    //newExpense is called in conjunction with addExpense.  When the user
    //fills out the whole Expense Form and clicks the done button, this method
    //and the addExpense method are ran
    func newExpense (cost:Double, name:String, category:String, description:String) {
        Expense output = new Expense(cost, name, category, description)
    }

    //addExpense takes in an Expense object and adds it to
    //the expenses array
    func addExpense (output:Expense) {
        expenses.append(output)
    }

    //deleteExpense takes in an integer associated with the array position of
    //the expense to be deleted from the expenses array
    func deleteExpense (position:Int) {
        expenses.remove(at: position)
    }

    //getExpense returns an Expense at a particular position in the array expenses
    func getExpense (position:Int) -> Expense {
        return exepenses[position]
    }

    //PDF output
    
}
