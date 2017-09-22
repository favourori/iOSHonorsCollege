//
//  WelcomeViewController.swift
//  HonorCollegeSAUProJ
//
//  Created by Favour Ori on 9/2/17.
//  Copyright © 2017 Favour Ori. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeInfo: UILabel!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    let welcomeText = "Welcome to the official app of SAU Honors College. We are prepared to offer you a once-in-a-lifetime chance to meet your goals by enrolling in our college.\n\nHere, you\'ll obtain priceless knowledge, experience, and you will also get to meet and attend classes with other great minds!"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        welcomeInfo.text = welcomeText
        sideMenu()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
