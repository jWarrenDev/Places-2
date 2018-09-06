//
//  Place.swift
//  Places 2
//
//  Created by Welinkton on 9/6/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

struct Place {
    let name:String
    let location: (latitude:Double, longitude:Double )

    
    init(name:String, latiude: latitude:Double, longitude:Double){
        self.name = name
        self.location = (latitude: latitude:Double, longitude:Double)
        
    }
}
