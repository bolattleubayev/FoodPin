//
//  UINavigationController+ext.swift
//  FoodPin
//
//  Created by macbook on 12/15/19.
//  Copyright © 2019 bolattleubayev. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    
    open override var childForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
