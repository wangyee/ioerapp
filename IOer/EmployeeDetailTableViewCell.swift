//
//  EmployeeDetailTableViewCell.swift
//  IOer
//
//  Created by Michael on 2017/8/7.
//  Copyright © 2017年 mwsoho. All rights reserved.
//

import UIKit

class EmployeeDetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var fieldLabel: UILabel!

    @IBOutlet weak var valueLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
