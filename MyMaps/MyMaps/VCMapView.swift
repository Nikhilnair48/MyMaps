//
//  VCMapView.swift
//  MyMaps
//
//  Created by Nikhil Nair on 05/06/17.
//  Copyright © 2017 NNair. All rights reserved.
//

import Foundation
import MapKit
extension ViewController: MKMapViewDelegate {
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
    // func mapView(mapView: MKMapView, annotation: MKAnnotation) -> MKAnnotationView? {
        if let annotation = annotation as? Artwork {
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
                as? MKPinAnnotationView { // 2
                    dequeuedView.annotation = annotation
                    view = dequeuedView
            } else { // 3
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton(type: .DetailDisclosure) as UIView
            }
            return view
        }
        return nil
    }
    
    // WHEN THE USER TAPS ON A MAP ANNOTATION PIN, THE CALLOUT SHOWS AN INFO 
    // BUTTON. IF THE USER TAPS THIS INFO BUTTON, THE BELOW METHOD IS CALLED
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
    // func mapView(mapView: MKMapView!, view: MKAnnotationView!, calloutAccessoryControlTapped control: UIControl) {
        let location = view.annotation as! Artwork
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        location.mapIem().openInMapsWithLaunchOptions(launchOptions)
        
        
    }
}