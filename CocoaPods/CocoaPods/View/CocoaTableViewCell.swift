//
//  CocoaTableViewCell.swift
//  CocoaPods
//
//  Created by Mohd Saif on 08/11/21.
//

import UIKit
import SDWebImage
class CocoaTableViewCell: UITableViewCell {
  
    
    @IBOutlet weak var authorname: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    ///Configuring Cell
    func configureCell(item:Item) {
        self.authorImage.sd_setImage(with: URL(string: item.authorImage ?? ""), placeholderImage: UIImage(named: "placeholder.png"))
        self.authorname.text = item.authorName
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
