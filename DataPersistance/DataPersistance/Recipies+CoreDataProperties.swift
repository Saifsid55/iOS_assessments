//
//  Recipies+CoreDataProperties.swift
//  DataPersistance
//
//  Created by Mohd Saif on 15/11/21.
//

import Foundation
import CoreData


extension Recipe {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipe> {
        return NSFetchRequest<Recipe>(entityName: "Recipe")
    }

    @NSManaged public var createdBy: String?
    @NSManaged public var date: Date?
    @NSManaged public var ingredients: String?
    @NSManaged public var name: String?
    @NSManaged public var timeToPrepare: Float

}

extension Recipe : Identifiable {

}
