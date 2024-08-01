//
//  BodyCompCard.swift
//  Fitoku
//
//  Created by jimmy on 8/1/24.
//

import SwiftUI

struct BodyComp {
    let id: Int
    let title: String
    let image: String
    let tintColor: Color
    let amount: String
}

struct BodyCompCard: View {
    @State var bodyComp: BodyComp
    
    var body: some View {
        ZStack {
            VStack {
                HStack(alignment: .top) {
                    Text(bodyComp.title)
                        .fontWeight(.semibold)
                        
                    Spacer()
                    
                    Image(systemName: bodyComp.image)
                        .foregroundColor(bodyComp.tintColor)
                }
                
                Text(bodyComp.amount)
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
    BodyCompCard(bodyComp: BodyComp(id: 0, title: "Weight", image: "figure", tintColor: .accent1, amount: "160 lb"))
}
