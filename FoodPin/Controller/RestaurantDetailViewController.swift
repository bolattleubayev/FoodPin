//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by macbook on 12/12/19.
//  Copyright © 2019 bolattleubayev. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        restaurantImageView.image = UIImage(named:restaurant.image)
        nameLabel.text = restaurant.name
        locationLabel.text = restaurant.location
        typeLabel.text = restaurant.type
        
        // disabling large titles
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    @IBOutlet var restaurantImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    
    var restaurant: Restaurant = Restaurant()
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
