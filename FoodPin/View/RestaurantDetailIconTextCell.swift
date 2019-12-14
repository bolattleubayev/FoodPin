//
//  RestaurantDetailIconTextCell.swift
//  FoodPin
//
//  Created by macbook on 12/15/19.
//  Copyright © 2019 bolattleubayev. All rights reserved.
//

import UIKit

class RestaurantDetailIconTextCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var shortTextLabel: UILabel! {
        didSet {
            shortTextLabel.numberOfLines = 0
        }
    }
    
}
