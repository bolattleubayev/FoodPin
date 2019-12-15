//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by macbook on 12/15/19.
//  Copyright © 2019 bolattleubayev. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        backgroundImageView.image = UIImage(named: restaurant.image)
        
        // Applying the blurr effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // concatenating two transforms
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let scaleUpTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
        
        
        // initial state for animation, make it invisible on the right side of the scene
        for rateButton in rateButtons {
            rateButton.transform = moveScaleTransform
            rateButton.alpha = 0
        }
        
        // animation for close button (cross)
        let moveUpCloseTransform = CGAffineTransform.identity.translatedBy(x: 0, y: -400)
        closeButton.transform = moveUpCloseTransform
            closeButton.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        for buttonNum in 0..<rateButtons.count {
            UIView.animate(withDuration: 0.8, delay: 0.1 + Double(buttonNum) * 0.05, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.3, options: [], animations: {
                self.rateButtons[buttonNum].alpha = 1.0
                self.rateButtons[buttonNum].transform = .identity // clearing any pre-defined transforms
            }, completion: nil)
        }
        
        UIView.animate(withDuration: 0.8, delay: 0.35, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.3, options: [], animations: {
            self.closeButton.alpha = 1.0
            self.closeButton.transform = .identity // clearing any pre-defined transforms
        }, completion: nil)
    }
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBAction func close(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet var rateButtons: [UIButton]!
    
    var restaurant = Restaurant()
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
