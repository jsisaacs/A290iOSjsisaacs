//
//  ViewController.swift
//  Settings
//
//  Created by Josh Isaacson - Work on 10/11/17.
//  Copyright © 2017 Josh Isaacson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myUsernameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refreshFields() {
        let myDefaults = UserDefaults.standard
        myUsernameLabel.text = myDefaults.string(forKey: myUsernameKey)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refreshFields()
    }

}

