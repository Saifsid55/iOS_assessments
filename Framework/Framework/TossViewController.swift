//
//  TossViewController.swift
//  Framework
//
//  Created by Mohd Saif on 15/11/21.
//

import UIKit

class TossViewController: UIViewController {

    @IBOutlet weak var tossBtn: UIButton!
    @IBOutlet weak var StatusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func tossBtnAction(_ sender: Any) {let status = Bool.random()
        
        if status{
            tossBtn.setImage(UIImage(named: "heads "), for: .normal)
            StatusLabel.text = "Heads"
        }
        else{
            tossBtn.setImage(UIImage(named: "tails "), for: .normal)
            StatusLabel.text = "Tails"
        }
        
        
        doAnimationCoin(tossBtn)

        
    }
    func doAnimationCoin(_ button:UIButton) {
        let coinFlip = CATransition()
        coinFlip.startProgress = 0.0
        coinFlip.endProgress = 1.0
        coinFlip.type = CATransitionType(rawValue: "flip")
        coinFlip.subtype = CATransitionSubtype(rawValue: "fromRight")
        coinFlip.duration = 0.1
        coinFlip.repeatCount = 5
        button.layer.add(coinFlip, forKey: "transition")
    }
}
