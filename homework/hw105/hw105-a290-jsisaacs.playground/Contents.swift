// Deduct It!
// Joshua Isaacson - jsisaacs@iu.edu
// "Homework 105"
// "A290 / Fall 2017"
// October 5, 2017

import Foundation

class Expense {
    var cost : Double
    var name : String
    var category : String
    var description : String
    var expenses = [Expense]()
    
    init(cost:Double, name:String, category:String, description:String) {
        self.cost = cost
        self.name = name
        self.category = category
        self.description = description
    }
    
    //EXPENSE PERSISTENCE
    
    let expensePersist = UserDefaults.standard
    
    func encode() {
        expensePersist.set(cost, forKey: "Cost")
        expensePersist.set(name, forKey: "Name")
        expensePersist.set(category, forKey: "Category")
        expensePersist.set(description, forKey: "Description")
        expensePersist.set(expenses, forKey: "Expenses")
    }
    
    func decode() {
        let costPersisted = expensePersist.double(forKey: "Cost")
        if let namePersisted = expensePersist.object(forKey: "Name") as? String {
            name = namePersisted
        }
        if let categoryPersisted = expensePersist.object(forKey: "Category") as? String {
            category = categoryPersisted
        }
        if let descriptionPersisted = expensePersist.object(forKey: "Description") as? String {
            description = descriptionPersisted
        }
        if let expensesPersisted = expensePersist.object(forKey: "Expenses") as? [Expense]? ?? [Expense]() {
            expenses = expensesPersisted
        }
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
    func newExpense(cost:Double, name:String, category:String, description:String) {
        let expenseObj = Expense(cost:cost, name:name, category:category, description:description)
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

class Settings {
    //Settings
    /*
     setCurrency
     getCurrency
     setName
     getName
     setAddress
     getAddress
     */
    
    var currency : String = "$"
    var name : String = "name"
    var address : String = "address"
    
    //SETTINGS PERSISTENCE
    
    let settings = UserDefaults.standard
    
    func encode() {
        settings.set(currency, forKey: "Currency")
        settings.set(name, forKey: "Name")
        settings.set(address, forKey: "address")
    }
    
    func decode() {
        if let currencyPersisted = settings.object(forKey: "Currency") as? String {
            currency = currencyPersisted
        }
        if let namePersisted = settings.object(forKey: "Name") as? String {
            name = namePersisted
        }
        if let addressPersisted = settings.object(forKey: "Address") as? String {
            address = addressPersisted
        }
    }
    
    init() {
    
    }
    
    //setCurrency sets the currency
    func setCurrency (setCurrency:String) {
        currency = setCurrency
    }
    
    //getCurrency gets the value for currency
    func getCurrency() -> String {
        return currency
    }
    
    //setName sets the users name
    func setName(userName:String) {
        name = userName
    }
    
    //getName gets the name
    func getName() -> String {
        return name
    }
    
    //setAddress sets the users address
    func setAddress(userAddress:String) {
        address = userAddress
    }
    
    //getAddress gets the address
    func getAddress() -> String {
        return address
    }
}

//TEST CLIENT
let expenseObj = Expense(cost:10.00, name:"username", category:"category", description:"description")
let settingsObj = Settings()

