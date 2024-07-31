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
    
    var mockSteps = [
        Steps(id: 0, title: "Today's Steps", subtitle: "Goal: 5,000", image: "figure.walk", tintColor: .accent1, amount: "2,278"),
        Steps(id: 1, title: "Weekly Average", subtitle: "Goal: 7,500", image: "figure.walk", tintColor: .accent1, amount: "9,389")
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Dashboard")
                    .font(.title).bold()
                
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
                .background(Color.gray.opacity(0.05))
                .cornerRadius(12)
            }
            .padding()
            
            HStack {
                Text("Steps")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Show More")
                } label: {
                    Text("Show More")
                        .foregroundColor(.accent1)
                }
            }
            .padding(.horizontal)
            
            LazyVGrid(columns: Array(repeating: GridItem(), count: 1)) {
                ForEach(mockSteps, id: \.id) { step in StepsCard(steps: step)
                    
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    HomeView()
}
