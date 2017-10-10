//
//  ExpenseModel.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 10/8/17.
//  Copyright © 2017 A290/A590 Fall 2017 - jsisaacs. All rights reserved.
//

import Foundation

class ExpenseModel: NSObject, NSCoding {
    
    var expenses = [Expense]()
    
    struct ExpenseModelKey {
        static let expenses = "expenses"
    }
    
    init(expenses:[Expense]) {
        self.expenses = expenses
        super.init()
    }
    
    //encode saved values
    func encode(with aCoder: NSCoder) {
        aCoder.encode(expenses, forKey: ExpenseModelKey.expenses)
    }
    
    //initialize NSCoder, decode saved values
    required convenience init?(coder aDecoder: NSCoder) {
        let expenses = aDecoder.decodeObject(forKey: ExpenseModelKey.expenses) as? [Expense]? ?? [Expense]()
        
        //initialize
        self.init(expenses:expenses!)
    }
  
    //Expense Management
    /*
     An object of type Expense has the following attributes:
     cost, name, category, description
     
     newExpense
     deleteExpense
     getExpense
     */
    
    //newExpense creates and adds an Expense object to expenses array
    func newExpense(cost:Double, name:String, category:String, desc:String) {
        let expenseObj = Expense(cost:cost, name:name, category:category, desc:desc)
        expenses.append(expenseObj)
    }
    
    //deleteExpense takes in an integer associated with the array position of
    //the expense to be deleted from the expenses array
    func deleteExpense(position:Int) {
        expenses.remove(at: position)
    }
    
    //getExpense returns an Expense at a particular position in the array expenses
    func getExpense(position:Int) -> Expense {
        return expenses[position]
    }
    
}

class Expense: NSObject, NSCoding{
    var cost : Double
    var name : String
    var category : String
    var desc: String
    
    struct ExpenseKey {
        static let cost = "cost"
        static let name = "name"
        static let category = "category"
        static let desc = "desc"
        static let expenses = "expenses"
    }
    
    init(cost:Double, name:String, category:String, desc:String) {
        self.cost = cost
        self.name = name
        self.category = category
        self.desc = desc
        super.init()
    }
    
    //EXPENSE PERSISTENCE
    
    //encode saved values
    func encode(with aCoder: NSCoder) {
        aCoder.encode(cost, forKey: ExpenseKey.cost)
        aCoder.encode(name, forKey: ExpenseKey.name)
        aCoder.encode(category, forKey: ExpenseKey.category)
        aCoder.encode(desc, forKey: ExpenseKey.desc)
    }
    
    //initialize NSCoder, decode saved values
    required convenience init?(coder aDecoder: NSCoder) {
        
        let name = aDecoder.decodeObject(forKey: ExpenseKey.name) as? String
        let cost = aDecoder.decodeDouble(forKey: ExpenseKey.cost)
        let category = aDecoder.decodeObject(forKey: ExpenseKey.category) as? String
        let desc = aDecoder.decodeObject(forKey: ExpenseKey.desc) as? String
        
        // initialize
        self.init(cost:cost, name:name!, category:category!, desc:desc!)
    }
    
}
