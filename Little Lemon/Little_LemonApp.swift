//
//  Little_LemonApp.swift
//  Little Lemon
//
//  Created by Gulu the Laptop on 7/5/24.
//

import SwiftUI

@main
struct LittleLemonApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            OnboardingView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
