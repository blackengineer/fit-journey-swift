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
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .accent2, duration: "30 min", date: "Aug 1", calories: "302 cal"),
        Workout(id: 1, title: "Functional Strength Training", image: "figure.strengthtraining.functional", tintColor: .accent2, duration: "45 min", date: "Aug 2", calories: "358 cal"),
        Workout(id: 2, title: "Traditional Strength Training", image: "figure.strengthtraining.traditional", tintColor: .accent2, duration: "60 min", date: "Aug 4", calories: "350 cal")
    ]
    
    var mockHearts = [
        Heart(id: 0, title: "Resting Heart Rate", subtitle: "Goal: 50 bpm", image: "heart.fill", tintColor: .red, amount: "55 bpm"),
        Heart(id: 1, title: "Heart Rate Variability", subtitle: "Goal: 50 ms", image: "heart.fill", tintColor: .red, amount: "45 ms"),
        Heart(id: 2, title: "Average Walking Heart Rate", subtitle: "Goal: 70 bpm", image: "heart.fill", tintColor: .red, amount: "75 bpm"),
        Heart(id: 3, title: "Cardio Fitness", subtitle: "Goal: 60 VO2 max", image: "heart.fill", tintColor: .red, amount: "62.4 VO2 max")
    ]
    
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
                
                LazyVStack {
                    ForEach(mockSteps, id: \.id) { step in StepsCard(steps: step)
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
                    ForEach(mockWorkouts, id: \.id) { workout in WorkoutCard(workout: workout)
                        
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
                    ForEach(mockHearts, id: \.id) { heart in HeartCard(heart: heart)
                        
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
