//
//  ConcentratedViewController.swift
//  TabbedApp
//
//  Created by Josh Isaacson - Work on 9/17/17.
//  Copyright © 2017 A290 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class ConcentratedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let subViewFrame = CGRect(x: 30, y: 50, width: 80, height: 200)
        let ourSubView = ConcentratedView(frame: subViewFrame)
        
        let secondSubViewFrame = CGRect(x: 30, y: 50, width: 200, height: 175)
        let secondSubView = ConcentratedView(frame: secondSubViewFrame)
        
        if let lView = self.view {
            print("The view defined in main.storyboard is \(lView)")
            lView.addSubview(secondSubView)
            lView.addSubview(ourSubView)
            
            ourSubView.backgroundColor = UIColor.yellow
            secondSubView.backgroundColor = UIColor.red
            
            
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

