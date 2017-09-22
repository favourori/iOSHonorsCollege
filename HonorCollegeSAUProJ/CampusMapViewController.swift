//
//  CampusMapViewController.swift
//  HonorCollegeSAUProJ
//
//  Created by Favour Ori on 9/3/17.
//  Copyright © 2017 Favour Ori. All rights reserved.
//

import UIKit
import MapKit

class CampusMapViewController: UIViewController, UISearchBarDelegate, MKMapViewDelegate{

    
    @IBOutlet weak var mapDisplay: MKMapView!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenu()
        
        
        
        mapDisplay.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    

   
    
  
    
    
    
    
    
    
    
    
    func  sideMenu() {
        
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController().rearViewRevealWidth = 300
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
