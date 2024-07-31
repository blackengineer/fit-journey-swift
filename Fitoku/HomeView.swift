//
//  HomeView.swift
//  Fitoku
//
//  Created by jimmy on 7/31/24.
//

import SwiftUI

struct HomeView: View {
    @State var activeEnergy: Int = 196
    @State var exercise: Int = 48
    @State var stand: Int = 12
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Dashboard")
                    .font(.title).bold()
                    .padding()
                
                HStack {
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active Energy")
                                .font(.callout)
                                .bold()
                            Text("\(activeEnergy) cal")
                                .font(.title3)
                                .bold()
                                .foregroundColor(.accent1)
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Exercise")
                                .font(.callout)
                                .bold()
                            Text("\(exercise) min")
                                .font(.title3)
                                .bold()
                                .foregroundColor(.accent2)
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                            Text("\(stand) hr")
                                .font(.title3)
                                .bold()
                                .foregroundColor(.accent3)
                        }
                    }
                    
                    Spacer()
                    
                    ZStack {
                        ProgressCircleView(progress: $activeEnergy, goal: 1000, color: .accent1)
                        
                        ProgressCircleView(progress: $exercise, goal: 60, color: .accent2)
                            .padding(.all, 20)
                        
                        ProgressCircleView(progress: $stand, goal: 15, color: .accent3)
                            .padding(.all, 40)
                    }
                    
                    Spacer()
                    
                }
                .padding()
                .background(.gray.opacity(0.05))
                .cornerRadius(12)
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
