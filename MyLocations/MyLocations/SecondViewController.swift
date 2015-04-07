//
//  SecondViewController.swift
//  MyLocations
//
//  Created by Terry Griffin on 3/24/15.
//  Copyright (c) 2015 mwsu. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        let model = (self.tabBarController as CustomTabBarController).model
        var location = CLLocationCoordinate2D(
            latitude: model.lat,
            longitude: model.lon
        )
        // 1
        
        setRegion(location)
        // 2
        
        makeAnnotation(location)
        //3
        
        
        //let model = (self.tabBarController as CustomTabBarController).model
        //location.latitude = model.lat
        //location.longitude = model.lon
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setRegion(location: CLLocationCoordinate2D) {
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
    }
    
    func makeAnnotation(location: CLLocationCoordinate2D){
        let annotation = MKPointAnnotation()
        annotation.setCoordinate(location)
        annotation.title = "Big Ben"
        annotation.subtitle = "London"
        mapView.addAnnotation(annotation)
    }
    
    //override func viewWillAppear(animated: Bool) {
        // Get a reference to the model data from the custom tab bar controller.
        //let model = (self.tabBarController as CustomTabBarController).model
        
        // This tab will simply access the data and display it when the view
        // appears.
        //location.latitude = model.lat
        //location.longitude = model.lon
        
    //}


}

