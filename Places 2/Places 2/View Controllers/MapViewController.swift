//
//  MapViewController.swift
//  Places 2
//
//  Created by Welinkton on 9/6/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit
import MapKit


class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    // MARK: - Properties
    
    var location: (latitude: Double, longitude: Double)? {
        didSet {
            updateMapViewLocation()
        }
    }
 
    private func updateMapViewLocation() {
        guard let location = location, isViewLoaded else { return }
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
    }

}
