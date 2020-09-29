//
//  ActionDetailViewController+Map.swift
//  FullCircle
//
//  Created by Levi Davis on 6/14/20.
//  Copyright © 2020 FullCircle. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

extension ActionDetailViewController: MKMapViewDelegate, MKAnnotation {
    var coordinate: CLLocationCoordinate2D {
        let lattitude = lat
        let longitude = long
        return CLLocationCoordinate2D(latitude: lattitude, longitude: longitude)
    }
    
    func getAnnotation() {
        
        let annotation = MKPointAnnotation()
        annotation.title = "Grand Army Plaza"
        annotation.coordinate = coordinate
        mapView.addAnnotation(annotation)
        centerViewOnUserLocation()
    }
    
    func centerViewOnUserLocation() {
        
        let coordinateRegion = MKCoordinateRegion.init(center: initialLocation.coordinate, latitudinalMeters: searchRadius * 2.0, longitudinalMeters: searchRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    
    
}
