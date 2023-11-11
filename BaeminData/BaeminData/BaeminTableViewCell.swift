//
//  BaeminTableViewCell.swift
//  BaeminData
//
//  Created by Jongkwon on 11/8/23.
//

import UIKit

class BaeminTableViewCell: UITableViewCell {
    @IBOutlet weak var MediumLabel: UILabel!
    @IBOutlet weak var LargeLabel: UILabel!
    @IBOutlet weak var MediumCostLabel: UILabel!
    @IBOutlet weak var LargeCostLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
