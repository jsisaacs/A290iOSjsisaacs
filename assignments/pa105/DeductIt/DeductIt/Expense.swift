//Deduct It!
//Joshua Isaacson , jsisaacs@iu.edu
//"Programming Assignment 105"
//A290/A590 / Fall 2017
//Oct 8, 2017

import Foundation

class ExpenseModel {//: NSObject, NSCoding {
    
    var expenses = [Expense]()
    
    init(expenses:[Expense]) {
        self.expenses = expenses
    }
}

class Expense: NSObject, NSCoding {
    var cost : Double
    var name : String
    var category : String
    //var desc: String
    
    init(cost:Double, name:String, category:String) {//desc:String) {
        self.cost = cost
        self.name = name
        self.category = category
        
        //super.init()
    }
    
    //EXPENSE PERSISTENCE
    
    //encode saved values
    func encode(with aCoder: NSCoder) {
        aCoder.encode(cost, forKey: "Cost")
        aCoder.encode(name, forKey: "Name")
        aCoder.encode(category, forKey: "Category")
        
    }
    
    //initialize NSCoder, decode saved values
    required convenience init?(coder aDecoder: NSCoder) {
        
        let name = aDecoder.decodeObject(forKey: "Name") as? String
        let cost = aDecoder.decodeDouble(forKey: "Cost")
        let category = aDecoder.decodeObject(forKey: "Category") as? String
        
        
        // initialize
        self.init(cost:cost, name:name!, category:category!)
    }
    
}
