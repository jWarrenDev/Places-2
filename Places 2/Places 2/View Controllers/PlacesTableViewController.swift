//
//  PlacesTableViewController.swift
//  Places 2
//
//  Created by Welinkton on 9/6/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController {

    weak var delegate: PlaceSelectionDelegate?
    var placeController: PlaceController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeController?.places.count ?? 0 // Don't have to unwrap place controller
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)
        
        let place = placeController?.places[indexPath.row]
        
        cell.textLabel?.text = place?.name
        
        return cell
    }

    // MARK: Table view Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let place = placeController?.places[indexPath.row] else {return}
        delegate?.placeWasSelected(place: place)
    }
    
}


