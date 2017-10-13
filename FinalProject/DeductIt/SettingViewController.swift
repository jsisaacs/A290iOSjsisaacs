//
//  SettingViewController.swift
//  DeductIt
//
//  Created by Josh Isaacson - Work on 10/13/17.
//  Copyright © 2017 Josh Isaacson. All rights reserved.
//

import UIKit

class SettingViewController: UITableViewController {
    
    @IBOutlet weak var currencyTextField: UITextField!
    
    @IBAction func wipeAllData(_ sender: Any) {
        expenses.removeAll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    */
}
