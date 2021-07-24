//
//  SaveData.swift
//  Product Shop
//
//  Created by Клим on 24.07.2021.
//

import Foundation
import CoreData

class SaveData {
    
    static var shared = SaveData()
    
    var items: [Product] = []
    
    private init() {}
    
    var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Product_Shop")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    func fetchData() {
        let fetchRequest: NSFetchRequest<Product> = Product.fetchRequest()
        let viewContext = persistentContainer.viewContext
        do {
            items = try viewContext.fetch(fetchRequest)
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func saveItem(name: String, count: String, price: String) {
        let viewContext = persistentContainer.viewContext
        guard let entityDescription = NSEntityDescription.entity(forEntityName: "Product", in: viewContext) else { return }
        guard let task = NSManagedObject(entity: entityDescription, insertInto: viewContext) as? Product else { return }
        task.setValue(name, forKey: "name")
        task.setValue(count, forKey: "count")
        task.setValue(price, forKey: "price")
        task.name = name
        task.count = count
        task.price = price
        items.append(task)
        saveContext()
    }
    
    func deleteTask(for index: Int) {
        let context = persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<Product> = Product.fetchRequest()
        if let objects = try? context.fetch(fetchRequest) {
            context.delete(objects[index])
        }
        items.remove(at: index)
        saveContext()
    }
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
