//
//  Little_LemonApp.swift
//  Little Lemon
//
//  Created by Gulu the Laptop on 7/5/24.
//

import SwiftUI

@main
struct Little_LemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
