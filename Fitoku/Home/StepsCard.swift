//
//  StepsCard.swift
//  Fitoku
//
//  Created by jimmy on 7/31/24.
//

import SwiftUI

struct Steps {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let amount: String
}

struct StepsCard: View {
    @State var steps: Steps
    
    var body: some View {
        ZStack {
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(steps.title)
                            .fontWeight(.semibold)
                        
                        Text(steps.subtitle)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    Image(systemName: steps.image)
                        .foregroundColor(steps.tintColor)
                }
                
                Text(steps.amount)
                    .font(.title3)
                    .bold()
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
        }
        .background(Color.gray.opacity(0.05))
        .cornerRadius(12)
    }
}

#Preview {
    StepsCard(steps: Steps(id: 0, title: "Today's Steps", subtitle: "Goal: 10000", image: "figure.walk", tintColor: .accent1, amount: "2,278"))
}
