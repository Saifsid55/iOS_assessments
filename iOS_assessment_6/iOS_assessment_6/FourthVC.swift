//
//  FourthVC.swift
//  iOS_assessment_6
//
//  Created by Mohd Saif on 04/10/21.
//

import UIKit

class FourthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func push5thVCBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "FifthVC") as? FifthVC
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
   // This is used to pop
    @IBAction func popBtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
}
