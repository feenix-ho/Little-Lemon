//
//  MainView.swift
//  Little Lemon
//
//  Created by Gulu the Laptop on 7/5/24.
//

import SwiftUI

struct MainView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                Menu()
            }
        }
    }
}

#Preview {
    MainView().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
