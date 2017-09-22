//
//  ApplyNowViewController.swift
//  HonorCollegeSAUProJ
//
//  Created by Favour Ori on 9/3/17.
//  Copyright © 2017 Favour Ori. All rights reserved.
//

import UIKit

class ApplyNowViewController: UIViewController {

    @IBOutlet weak var applyTextDisplay: UILabel!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
  
    @IBAction func applyButton(_ sender: UIButton) {
        
        if let url = URL(string: "https://admin.saumag.edu/cc3/honors.html") {
            UIApplication.shared.open(url, options: [:])
        }
    }
   
    
    let applyInfo = "We admit first-year and transfer students based upon a global assessment of academic potential.\n\nWe examine ACT or SAT scores, high school GPAs, required submitted essays, letters of recommendation and other relevant information. Current SAU students who have earned at least a 3.5 GPA may petition the Honors College for admission.\n\nStudents transferring from affiliated Honors 2+2 programs (SAU Tech, SACC, and College of the Ouachitas, at present) must hold a minimum college GPA of 3.25. Also, they too must submit an online application, required essays, and letters of recommendation."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenu()
        
        applyTextDisplay.text = applyInfo

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
