//
//  SecondVC.swift
//  iOS_assessment_6
//
//  Created by Mohd Saif on 04/10/21.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  // This function is used to pop view controller
    @IBAction func Popbtn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
 // 
    @IBAction func presentBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC
        
        self.navigationController?.present(vc!, animated: true, completion: nil)
    }
    
    
    // This is function is used to push to 4th view controller
    
    @IBAction func push4thVCBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "FourthVC") as? FourthVC
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
}
