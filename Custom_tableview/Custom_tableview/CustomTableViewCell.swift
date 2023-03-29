//
//  CustomTableViewCell.swift
//  Custom_tableview
//
//  Created by Goyani Bhumi Nitesh on 2023-03-28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
  
   
    
    @IBOutlet weak var cellGrade: UILabel!
    @IBOutlet weak var cellMarks: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
