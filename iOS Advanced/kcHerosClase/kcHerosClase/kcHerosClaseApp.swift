//
//  kcHerosClaseApp.swift
//  kcHerosClase
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import SwiftUI

@main
struct kcHerosClaseApp: App {
    let persistenceController = PersistenceController.shared // Core Data

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
