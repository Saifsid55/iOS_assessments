//
//  RecipiesTableViewCell.swift
//  DataPersistance
//
//  Created by Mohd Saif on 15/11/21.
//

import UIKit

class RecipiesTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var ingrediantsLbl: UILabel!
    @IBOutlet weak var createdbyLbl: UILabel!
    @IBOutlet weak var preparationTimeLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
