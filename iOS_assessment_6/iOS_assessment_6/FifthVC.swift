//
//  FifthVC.swift
//  iOS_assessment_6
//
//  Created by Mohd Saif on 04/10/21.
//

import UIKit

class FifthVC: UIViewController {

    @IBOutlet weak var textLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLbl.text = valueToPass

    }
    

    @IBAction func popToRootVcBtn(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    

}
