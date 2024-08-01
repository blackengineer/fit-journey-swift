//
//  HomeView.swift
//  Fitoku
//
//  Created by jimmy on 7/31/24.
//

import SwiftUI

struct HomeView: View {
    @State var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
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
                                Text("\(viewModel.activeEnergy) cal")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.accent1)
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Exercise")
                                    .font(.callout)
                                    .bold()
                                Text("\(viewModel.exercise) min")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.accent2)
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                Text("\(viewModel.stand) hr")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.accent3)
                            }
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $viewModel.activeEnergy, goal: 1000, color: .accent1)
                            
                            ProgressCircleView(progress: $viewModel.exercise, goal: 60, color: .accent2)
                                .padding(.all, 20)
                            
                            ProgressCircleView(progress: $viewModel.stand, goal: 15, color: .accent3)
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
                
                LazyVStack {
                    ForEach(viewModel.mockSteps, id: \.id) { step in StepCard(step: step)
                    }
                }
                .padding()
                
                HStack {
                    Text("Workout History")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text("Show More")
                            .foregroundColor(.accent1)
                    }
                }
                .padding(.horizontal)
                
                LazyVStack {
                    ForEach(viewModel.mockWorkouts, id: \.id) { workout in WorkoutCard(workout: workout)
                        
                    }
                }
                .padding()
                
                HStack {
                    Text("Heart Health")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text("Show More")
                            .foregroundColor(.accent1)
                    }
                }
                .padding(.horizontal)
                
                LazyVStack {
                    ForEach(viewModel.mockHearts, id: \.id) { heart in HeartCard(heart: heart)
                        
                    }
                }
                .padding()
                
                HStack {
                    Text("Nutrition")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text("Show More")
                            .foregroundColor(.accent1)
                    }
                }
                .padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                    ForEach(viewModel.mockNutritions, id: \.id) { nutrition in NutritionCard(nutrition: nutrition)
                        
                    }
                }
                .padding()
                
                HStack {
                    Text("Sleep")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text("Show More")
                            .foregroundColor(.accent1)
                    }
                }
                .padding(.horizontal)
                
                LazyVStack {
                    ForEach(viewModel.mockSleeps, id: \.id) { sleep in SleepCard(sleep: sleep)
                        
                    }
                }
                .padding()
                
                HStack {
                    Text("Body Measurements")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text("Show More")
                            .foregroundColor(.accent1)
                    }
                }
                .padding(.horizontal)
                
                LazyVStack {
                    ForEach(viewModel.mockBodyComps, id: \.id) { bodyComp in BodyCompCard(bodyComp: bodyComp)
                        
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
