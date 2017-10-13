//
//  Expense.swift
//  DeductIt
//
//  Created by Josh Isaacson - Work on 10/12/17.
//  Copyright © 2017 Josh Isaacson. All rights reserved.
//

import Foundation

class ExpenseModel {//: NSObject, NSCoding {
    
    var expenses = [Expense]()
    
    init(expenses:[Expense]) {
        self.expenses = expenses
    }
}

class Expense {//: NSObject, NSCoding{
    var cost : Double
    var name : String
    var category : String
    //var desc: String
    
    struct ExpenseKey {
        static let cost = "cost"
        static let name = "name"
        static let category = "category"
        //static let desc = "desc"
        static let expenses = "expenses"
    }
    
    init(cost:Double, name:String, category:String) {//desc:String) {
        self.cost = cost
        self.name = name
        self.category = category
        //self.desc = desc
        //super.init()
    }
    
    //EXPENSE PERSISTENCE
    /*
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
    */
}
