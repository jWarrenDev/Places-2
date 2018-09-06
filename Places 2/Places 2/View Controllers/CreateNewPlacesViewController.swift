//
//  CreateNewPlacesViewController.swift
//  Places 2
//
//  Created by Welinkton on 9/6/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class CreateNewPlacesViewController: UIViewController, PlacesPresenter {
   
    var placeController: PlaceController?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    
  
}
