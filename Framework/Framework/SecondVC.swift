//
//  SecondVC.swift
//  Framework
//
//  Created by Mohd Saif on 15/11/21.
//

import UIKit

class SecondVC: UIViewController {

  
    @IBOutlet weak var SegmentControl: UISegmentedControl!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
    @IBAction func ChangeTheme(_ sender: Any) {
        switch SegmentControl.selectedSegmentIndex
            {
            case 0:
                // light mode
                overrideUserInterfaceStyle = .light
                self.view.overrideUserInterfaceStyle = .light
                Label.overrideUserInterfaceStyle = .light
                Label.text = "Light Mode"
                Button.overrideUserInterfaceStyle = .light
                
            case 1:
                //Dark mode
                overrideUserInterfaceStyle = .dark
                self.view.overrideUserInterfaceStyle = .dark
                Label.overrideUserInterfaceStyle = .dark
                Label.text = "Dark Mode"
                Button.overrideUserInterfaceStyle = .dark
              
            default:
                break
            }
    }
    
}

