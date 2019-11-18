//
//  FriendTableCell.swift
//  tableDetailPractice
//
//  Created by apple on 2019/10/25.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class FriendTableCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var aboutLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
