//
//  PlacesTabBarController.swift
//  Places 2
//
//  Created by Welinkton on 9/6/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class PlacesTabBarController: UITabBarController {

    let placeController = PlaceController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for childVC in childViewControllers {
            
            if let childVC = childVC as? PlacesPresenter {
                childVC.placeController = placeController
            }
            
            
        }
    }

}
