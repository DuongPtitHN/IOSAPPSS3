//
//  TableViewCell.swift
//  settingIphone
//
//  Created by Admin on 5/3/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myLb: UILabel!
    @IBOutlet weak var myImage: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
