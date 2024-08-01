//
//  NutritionCard.swift
//  Fitoku
//
//  Created by jimmy on 8/1/24.
//

import SwiftUI

struct NutritionCard: View {
    @State var nutrition: Nutrition
    
    var body: some View {
        ZStack {
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(nutrition.title)
                            .fontWeight(.medium)
                        Text(nutrition.subtitle)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    Image(systemName: nutrition.image)
                        .foregroundColor(nutrition.tintColor)
                }
                
                Text(nutrition.amount)
                    .font(.title3)
                    .bold()
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
        }
        .background(.gray.opacity(0.05))
        .cornerRadius(12)
    }
}

#Preview {
    NutritionCard(nutrition: Nutrition(id: 0, title: "Protein", subtitle: "Goal: 124 g", image: "fork.knife", tintColor: .green, amount: "130 g"))
}
