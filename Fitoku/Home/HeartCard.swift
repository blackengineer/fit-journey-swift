//
//  HeartCard.swift
//  Fitoku
//
//  Created by jimmy on 7/31/24.
//

import SwiftUI

struct Heart {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let amount: String
}

struct HeartCard: View {
    @State var heart: Heart
    
    var body: some View {
        ZStack {
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(heart.title)
                            .fontWeight(.semibold)
                        
                        Text(heart.subtitle)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    Image(systemName: heart.image)
                        .foregroundColor(heart.tintColor)
                }
                
                Text(heart.amount)
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
    HeartCard(heart: Heart(id: 0, title: "Resting Heart Rate", subtitle: "Goal: 50 bpm", image: "heart.fill", tintColor: .red, amount: "55 bpm"))
}
