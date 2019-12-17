//
//  DiscoverTableViewCell.swift
//  FoodPin
//
//  Created by macbook on 12/18/19.
//  Copyright © 2019 bolattleubayev. All rights reserved.
//

import UIKit

class DiscoverTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // Outlets
    
    @IBOutlet var pictureView: UIImageView! 
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
}
