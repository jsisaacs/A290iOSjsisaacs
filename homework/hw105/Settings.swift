//
//  Settings.swift
//  
//
//  Created by Josh Isaacson - Work on 10/5/17.
//

import Foundation

class Settings {
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
    
    var currency : String = "$"
    var name : String = ""
    var address : String = ""
    
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
    
    //wipeData removes all elements in the expenses array 
    func wipeData() {
        //expenses.removeAll()
    }
}

var settingsObj = Settings()

//returns: ¥
settingsObj.setCurrency(setCurrency:"¥")
print(settingsObj.getCurrency())

//returns: Josh
settingsObj.setName(userName:"Josh")
print(settingsObj.getName())

//returns: 123 Main St
settingsObj.setAddress(userAddress:"123 Main St")
print(settingsObj.getAddress())

