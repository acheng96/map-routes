//
//  MapViewController.swift
//  map-routes
//
//  Created by Annie Cheng on 2/15/17.
//  Copyright © 2017 AnnieCheng. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController, GMSMapViewDelegate {
    
    var mapView: GMSMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let camera = GMSCameraPosition.camera(withLatitude: 42.446916, longitude: -76.484639, zoom: 15)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        mapView.delegate = self
        self.mapView = mapView
        view = mapView
    }

}

