//
//  HomeView.swift
//  Little Lemon
//
//  Created by Gulu the Laptop on 7/5/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        MainView()
            .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
