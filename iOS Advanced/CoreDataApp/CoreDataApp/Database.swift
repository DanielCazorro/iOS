//
//  Database.swift
//  CoreDataApp
//
//  Created by Daniel Cazorro Frías on 25/10/23.
//

import UIKit
import CoreData

class Database {
    private var moc: NSManagedObjectContext? {
        (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    }
    
    func createPerson() {
        
    }
    
}
