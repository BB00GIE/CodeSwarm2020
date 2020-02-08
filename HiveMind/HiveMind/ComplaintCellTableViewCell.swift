//
//  ComplaintCellTableViewCell.swift
//  HiveMind
//
//  Created by Brandon Elmore on 2/8/20.
//  Copyright © 2020 CodeSwarm. All rights reserved.
//

import UIKit

class ComplaintCell: UITableViewCell {

    @IBOutlet weak var ComplaintLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
