//
//  RecipiesDetailsViewController.swift
//  DataPersistance
//
//  Created by Mohd Saif on 15/11/21.
//

import UIKit
import CoreData

class RecipiesDetailsViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var ingrediantsTF: UITextField!
    @IBOutlet weak var createdbyTF: UITextField!
    @IBOutlet weak var preparationtimeTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func createData(){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let RecipeEntity = NSEntityDescription.entity(forEntityName: "Recipe", in: managedContext)!
        
        let recipe = NSManagedObject(entity: RecipeEntity, insertInto: managedContext)
        recipe.setValue(nameTF.text, forKey: "name")
        recipe.setValue(dateTF.text, forKey: "date")
        recipe.setValue(ingrediantsTF.text, forKey: "ingredients")
        recipe.setValue(createdbyTF.text, forKey: "createdBy")
        recipe.setValue(preparationtimeTF.text, forKey: "timeToPrepare")
        
        do {
            try managedContext.save()
        } catch let err as NSError {
            print("Could not save. \(err). \(err.userInfo)")
        }
        
    }
    
    func retrieveData() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Recipe")
        
        do {
            let result = try managedContext.fetch(fetchRequest)
            
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "name") as! String)
                
                
                
            }
        }   catch {
            print("Failed")
        }
    }

    func updateData() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "Recipe")
        fetchRequest.predicate = NSPredicate(format: "name = %@", "RejmaAndChawal")
        
        do
        {
            let test = try managedContext.fetch(fetchRequest)
            
            let objectUpdate = test[0] as! NSManagedObject
            objectUpdate.setValue("newName", forKey: "name")
            objectUpdate.setValue("newDate", forKey: "date")
            objectUpdate.setValue("newIngredients", forKey: "ingredients")
            objectUpdate.setValue("newCreatedBy", forKey: "createdBy")
            
            do {
                try managedContext.save()
            }
            catch {
                print(error)
            }
        }
        
        catch {
            print(error)
        }
    }
    
    func deleteData() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "Recipe")
        fetchRequest.predicate = NSPredicate(format: "name = %@", "RejmaAndChawal")
        
        do {
            let test = try managedContext.fetch(fetchRequest)
            
            let objectToDelete = test[0] as! NSManagedObject
            managedContext.delete(objectToDelete)
            
            do{
                try managedContext.save()
            }
            catch
            {
                print(error)
            }
        }
        catch
        {
            print(error)
        }

    }
}

