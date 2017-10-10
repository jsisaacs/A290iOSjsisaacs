//
//  ExpenseCell.swift
//  Deduct It!
//
//  Created by Josh Isaacson - Work on 9/30/17.
//  Copyright © 2017 A290/A590 Fall 2017 - jsisaacs. All rights reserved.
//

import UIKit

class ExpenseCell: UITableViewCell {
    
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    
    var expense: Expense? {
        didSet {
            guard let expense = expense else {
                return
            }
            
            itemLabel.text = expense.name
            dateLabel.text = expense.date
            costLabel.text = "\(expense.cost)"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

