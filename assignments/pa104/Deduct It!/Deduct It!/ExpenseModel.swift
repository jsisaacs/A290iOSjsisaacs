//
//  ExpenseModel.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 10/8/17.
//  Copyright © 2017 A290/A590 Fall 2017 - jsisaacs. All rights reserved.
//

import Foundation

class ExpenseModel: NSObject, NSCoding {
    
    var expenses = [ExpenseUnit]()
    
    struct ExpenseModelKey {
        static let expenses = "expenses"
    }
    
    init(expenses:[ExpenseUnit]) {
        self.expenses = expenses
        super.init()
    }
    
    //encode saved values
    func encode(with aCoder: NSCoder) {
        aCoder.encode(expenses, forKey: ExpenseModelKey.expenses)
    }
    
    //initialize NSCoder, decode saved values
    required convenience init?(coder aDecoder: NSCoder) {
        let expenses = aDecoder.decodeObject(forKey: ExpenseModelKey.expenses) as? [ExpenseUnit]? ?? [ExpenseUnit]()
        
        //initialize
        self.init(expenses:expenses!)
    }
  
    //ExpenseUnit Management
    /*
     An object of type ExpenseUnit has the following attributes:
     cost, name, category, description
     
     newExpense
     deleteExpense
     getExpense
     */
    
    //newExpense creates and adds an ExpenseUnit object to expenses array
    func newExpense(cost:Double, name:String, category:String, date:String) {
        let expenseObj = ExpenseUnit(cost:cost, name:name, category:category, date:date)
        expenses.append(expenseObj)
    }
    
    //deleteExpense takes in an integer associated with the array position of
    //the ExpenseUnit to be deleted from the expenses array
    func deleteExpense(position:Int) {
        expenses.remove(at: position)
    }
    
    //getExpense returns an ExpenseUnit at a particular position in the array expenses
    func getExpense(position:Int) -> ExpenseUnit {
        return expenses[position]
    }
    
}

class ExpenseUnit: NSObject, NSCoding{
    var cost : Double
    var name : String
    var category : String
    var date: String
    
    struct ExpenseKey {
        static let cost = "cost"
        static let name = "name"
        static let category = "category"
        static let date = "date"
        static let expenses = "expenses"
    }
    
    init(cost:Double, name:String, category:String, date:String) {
        self.cost = cost
        self.name = name
        self.category = category
        self.date = date
        super.init()
    }
    
    //ExpenseUnit PERSISTENCE
    
    //encode saved values
    func encode(with aCoder: NSCoder) {
        aCoder.encode(cost, forKey: ExpenseKey.cost)
        aCoder.encode(name, forKey: ExpenseKey.name)
        aCoder.encode(category, forKey: ExpenseKey.category)
        aCoder.encode(date, forKey: ExpenseKey.date)
    }
    
    //initialize NSCoder, decode saved values
    required convenience init?(coder aDecoder: NSCoder) {
        
        let name = aDecoder.decodeObject(forKey: ExpenseKey.name) as? String
        let cost = aDecoder.decodeDouble(forKey: ExpenseKey.cost)
        let category = aDecoder.decodeObject(forKey: ExpenseKey.category) as? String
        let date = aDecoder.decodeObject(forKey: ExpenseKey.date) as? String
        
        // initialize
        self.init(cost:cost, name:name!, category:category!, date:date!)
    }
    
}
