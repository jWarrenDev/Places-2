//
//  PlaceController.swift
//  Places 2
//
//  Created by Welinkton on 9/6/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

class PlaceController {

// CREATE, READ, UPDATE, DELETE

    private(set) var places = [Place]()

// Create

    func createPlace(with name:String, latitude:Double, longitude:Double){
        let place = Place(name: name, latiude: latitude, longitude: longitude)
        places.append(place)
    }


}
