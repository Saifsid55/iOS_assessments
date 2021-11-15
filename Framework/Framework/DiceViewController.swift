//
//  DiceViewController.swift
//  Framework
//
//  Created by Mohd Saif on 15/11/21.
//

import UIKit

class DiceViewController: UIViewController {

    @IBOutlet weak var diceImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func rollBtn(_ sender: Any) {
        //generate random number between 1 and 6
        let rolledNumber = Int.random(in: 1...6)
        
        //show the image for the dice in the imageview according to the rolled number
        diceImageView.image = UIImage(named: "dice\(rolledNumber)")
        
        //add a little animation if you want
        UIView.transition(with: diceImageView, duration: 0.5, options: .transitionCrossDissolve, animations: nil, completion: nil)

    }
    

   
}
