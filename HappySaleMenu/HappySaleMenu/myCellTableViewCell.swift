//
//  myCellTableViewCell.swift
//  HappySaleMenu
//
//  Created by Kirill Tsay on 03.05.2018.
//  Copyright © 2018 Kirill Tsay. All rights reserved.
//

import UIKit

class myCellTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.setLineSpacing(lineSpacing: 20.0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
