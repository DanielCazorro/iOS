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
        guard let moc,
              let entityPerson = NSEntityDescription.entity(forEntityName: "Person", in: moc)
        else { return }
        
        // MARK: - Person 1
        let person = NSManagedObject(
            entity: entityPerson,
            insertInto: moc)
        
        person.setValue("Daniel", forKey: "name")
        person.setValue("Cazorro", forKey: "lastname")
        person.setValue(31, forKey: "age")
        
        // MARK: - Person 2
        let person2 = NSManagedObject(
            entity: entityPerson,
            insertInto: moc)
        
        person.setValue("Pedro", forKey: "name")
        person.setValue("Jardón", forKey: "lastname")
        person.setValue(10, forKey: "age")
        
        // MARK: - Person 3
        let person3 = NSManagedObject(
            entity: entityPerson,
            insertInto: moc)
        
        person.setValue("Ángel", forKey: "name")
        person.setValue("Jardón", forKey: "lastname")
        person.setValue(8, forKey: "age")
        
        // MARK: - Person 4
        let person4 = NSManagedObject(
            entity: entityPerson,
            insertInto: moc)
        
        person.setValue("Susana", forKey: "name")
        person.setValue("Jardón", forKey: "lastname")
        person.setValue(25, forKey: "age")
        
        person.mutableSetValue(forKey: "childrens").addObjects(from: [person2, person3, person4])
        
        try? moc.save()
    }
    
}
