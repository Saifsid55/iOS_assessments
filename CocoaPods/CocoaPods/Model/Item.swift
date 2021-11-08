//
//  Item.swift
//  CocoaPods
//
//  Created by Mohd Saif on 08/11/21.
//

import Foundation


struct Item {
    let authorName: String?
    let authorImage: String?
    
    init(authorName: String, authorImage: String) {
        self.authorName = authorName
        self.authorImage = authorImage
    }
}
