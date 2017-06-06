//
//  Artwork.swift
//  MyMaps
//
//  Created by Nikhil Nair on 05/06/17.
//  Copyright © 2017 NNair. All rights reserved.
//

import Foundation
import MapKit
import Contacts

class Artwork: NSObject, MKAnnotation {
    
    // TITLE AND SUBTITLE HAS TO BE MADE OPTIONAL
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
    
    // ANNOTATION CALLOUT INFO BUTTONS OPENS THIS MAPTIEM IN MAPS APP
    func mapIem() -> MKMapItem {
        let addressDictionary = [String(CNPostalAddressStreetKey) : subtitle!]
        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary:addressDictionary)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = title
        return mapItem
    }
}
