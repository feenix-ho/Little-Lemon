//
//  DetailItemView.swift
//  Little Lemon
//
//  Created by Gulu the Laptop on 7/5/24.
//

import SwiftUI

struct DetailItemView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    let dish: Dish
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: dish.image ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            .clipShape(Rectangle())
            .frame(minHeight: 150)
            Text(dish.title ?? "")
                .font(.subTitleFont())
                .foregroundColor(.primaryColor1)
            Spacer(minLength: 20)
            Text(dish.descriptionDish ?? "")
                .font(.regularText())
            Spacer(minLength: 10)
            Text("$" + (dish.price ?? ""))
                .font(.highlightText())
                .foregroundColor(.primaryColor1)
                .monospaced()
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .ignoresSafeArea()
    }
}

#Preview {
    DetailItemView(dish: PersistenceController.oneDish())
}
