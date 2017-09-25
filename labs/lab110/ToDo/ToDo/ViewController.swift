//
//  ViewController.swift
//  ToDo
//
//  Created by Josh Isaacson - Work on 9/25/17.
//  Copyright © 2017 A290/A590 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myContent: UITextField!
    
    var myData: [ItemModel] = [ItemModel(pContent:"Sample Reminder",
                               pCategory:"Sample Category",
                               pDate:Date(timeIntervalSinceNow:TimeInterval(0)),
                               pDone:false)]
    
    func addEntry(_ content: String,
                  category: String,
                  date: Date,
                  done: Bool) {
        myData.append(
            ItemModel(pContent: content, pCategory: category, pDate: date, pDone: done)
        )
    }
    
    @IBAction func addItem(_ sender: AnyOBject) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let myDataDeference - appDelegate.myFirstToDoData
        
        myDataReference.addEntry(myContent.text!,
                                 category: myCategory.text!,
                                 date:myDatePicker.date,
                                 done:false)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

