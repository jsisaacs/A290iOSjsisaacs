//Deduct It!
//Joshua Isaacson , jsisaacs@iu.edu
//"Programming Assignment 105"
//A290/A590 / Fall 2017
//Oct 8, 2017

import UIKit

class ExpenseCell: UITableViewCell {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    
    var expense: Expense? {
        didSet {
            guard let expense = expense else { return }
            
            categoryLabel.text = expense.category
            nameLabel.text = expense.name
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
