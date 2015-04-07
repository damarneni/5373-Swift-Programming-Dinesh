//
//  CustomTabBarController.swift
//  MyLocations
//
//  Created by D. Amarnei on 4/7/15.
//  Copyright (c) 2015 mwsu. All rights reserved.
//

import Foundation

import UIKit

// This class holds the data for my model.
class ModelData {
    var lat = 51.50007773
    var lon = -0.1246402
}

class CustomTabBarController: UITabBarController {
    
    // Instantiate the one copy of the model data that will be accessed
    // by all of the tabs.
    var model = ModelData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}