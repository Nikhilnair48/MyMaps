//
//  ViewController.swift
//  MyMaps
//
//  Created by Nikhil Nair on 03/06/17.
//  Copyright © 2017 NNair. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let distanceSpan:CLLocationDegrees = 2000
        //let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(40.7128,74.0059)
        //mapView.setRegion(MKCoordinateRegionMakeWithDistance(myLocation, distanceSpan, distanceSpan), animated:true)
        
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        centerMapOnLocation(initialLocation)

        let artwork = Artwork(title: "King David Kalakaua",
            locationName: "Waikiki Gateway Park",
            discipline: "Sculpture",
            coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
        
        mapView.delegate = self
        
        mapView.addAnnotation(artwork)

    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

