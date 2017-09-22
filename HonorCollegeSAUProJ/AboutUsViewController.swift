//
//  AboutUsViewController.swift
//  HonorCollegeSAUProJ
//
//  Created by Favour Ori on 9/2/17.
//  Copyright © 2017 Favour Ori. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    @IBOutlet weak var aboutDisplay: UILabel!
    
    
    let aboutUsText = "The Honors College offers academically superior students a place to develop their skills and talents through smaller classes, different method of instruction, and the opportunity to work more closely with faculty.\n\nHonors College students must complete a minimum of 24 total hours of honors courses in order to receive an honors degree.\n\n- The Honors College student population is quite diverse. While most come from Arkansas, Texas, Louisiana, Oklahoma and other states, some come from around the world. Honors students have traveled from Canada, Bulgaria, Sudan, Sri Lanka, Nepal, Yugoslavia, Nigeria, Vietnam, China,Venezuela, Cameroon, Malaysia, Kenya, Zimbabwe, Korea, Tunisia, Togo, Bahamas, and India to participate in our program.\n\n- Students in the Honors College have an opportunity to live together in Honors Hall, a residence hall for Honors College students. This residence hall offers them a quiet environment in which to live and learn. Honors Hall also has a computer lab and a classroom, where some Honors College classes are taught.\n\n- Students who qualify and participate in the  honors program will also receive a $600 a year stipend in addition to their academic scholarships."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenu()
        
        aboutDisplay.text = aboutUsText

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
