//
//  SleepCard.swift
//  Fitoku
//
//  Created by jimmy on 8/1/24.
//

import SwiftUI

struct SleepCard: View {
    @State var sleep: Sleep
    
    var body: some View {
        ZStack {
            VStack {
                HStack(alignment: .top) {
                        Text(sleep.title)
                            .fontWeight(.medium)
            
                    Spacer()
                    
                    Image(systemName: sleep.image)
                        .foregroundColor(sleep.tintColor)
                }
                
                Text(sleep.amount)
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
    SleepCard(sleep: Sleep(id: 0, title: "Average Time Asleep", image: "bed.double.fill", tintColor: .accent3, amount: "7.5 hr"))
}
