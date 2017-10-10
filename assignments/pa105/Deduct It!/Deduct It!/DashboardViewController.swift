//
//  DashboardViewController.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 9/30/17.
//  Copyright © 2017 A290/A590 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit
//import Charts

protocol GetData {
    func getData(with data:[String], values:[String])
    var totalExpenses: [String] {
        get set
    }
    var categoryBreakdown: [String] {
        get set
    }
}

/*
class DashboardViewController: UIViewController, GetData {
    
    var totalExpenses: [String]
    
    var categoryBreakdown: [String]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension DashboardViewController {
    @IBAction func saveSettings(_ segue: UIStoryboardSegue) {
    }
}
*/
