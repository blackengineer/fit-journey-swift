//
//  StepsCard.swift
//  Fitoku
//
//  Created by jimmy on 7/31/24.
//

import SwiftUI

struct StepCard: View {
    @State var step: Step
    
    var body: some View {
        ZStack {
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(step.title)
                            .fontWeight(.semibold)
                        
                        Text(step.subtitle)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    Image(systemName: step.image)
                        .foregroundColor(step.tintColor)
                }
                
                Text(step.amount)
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
    StepCard(step: Step(id: 0, title: "Today's Steps", subtitle: "Goal: 10000", image: "figure.walk", tintColor: .accent1, amount: "2,278"))
}
