//
//  ViewController.swift
//  Debugging
//
//  Created by Mohd Saif on 15/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    private var count = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusBtn.layer.cornerRadius = 20
        minusBtn.layer.cornerRadius = 20

    }
    
    @IBAction func addAction(_ sender: Any) {
        count += 1
        numLabel.text = String(count)
        
    }
    @IBAction func subAction(_ sender: Any) {
        if count > 0{
            count -= 1
            numLabel.text = String(count)
        }
        
    }
    
}

