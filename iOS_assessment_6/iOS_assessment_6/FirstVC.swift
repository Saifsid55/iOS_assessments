//
//  ViewController.swift
//  iOS_assessment_6
//
//  Created by Mohd Saif on 04/10/21.
//

import UIKit

var valueToPass = ""
class FirstVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Push2ndVCBtn: UIButton!
    @IBOutlet weak var textString: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textString.delegate = self
       
    }

    @IBAction func Push2ndVCAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        valueToPass = textString.text ?? "dsgdfjgh"
    }
}

