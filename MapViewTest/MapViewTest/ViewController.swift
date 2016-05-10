//
//  ViewController.swift
//  MapViewTest
//
//  Created by Onur  on 10-05-16.
//  Copyright © 2016 Onur . All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var MainMap:MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let lat:CLLocationDegrees = 51.90
        let lon:CLLocationDegrees = 4.45
        
        let loc2D:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, lon)
        
        let region: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(loc2D, 10000, 10000)
        
        MainMap.region = region
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

