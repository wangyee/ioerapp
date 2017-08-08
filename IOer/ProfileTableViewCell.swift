//
//  ProfileTableViewCell.swift
//  IOer
//
//  Created by Michael on 2017/8/2.
//  Copyright © 2017年 mwsoho. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

   
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var officeLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    @IBOutlet weak var nationalityLabel: UILabel!
    @IBOutlet weak var genderImageView: UIImageView!
    
    
    
    
    
    
    override func awakeFromNib() {
        
        
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
