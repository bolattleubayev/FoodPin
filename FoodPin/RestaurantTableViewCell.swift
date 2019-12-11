//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by macbook on 12/12/19.
//  Copyright © 2019 bolattleubayev. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var heartTick: UIImageView!
    @IBOutlet var thumbnailImageView: UIImageView! {
        didSet {
            // to change the corner radius also go to the storyboard
            // and remove attribute from Image View's Identity inspector
            thumbnailImageView?.layer.cornerRadius = thumbnailImageView.bounds.width / 2
            thumbnailImageView?.clipsToBounds = true
        }
    }
}
