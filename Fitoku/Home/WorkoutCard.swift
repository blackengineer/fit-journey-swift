//
//  WorkoutCard.swift
//  Fitoku
//
//  Created by jimmy on 7/31/24.
//

import SwiftUI

struct Workout {
    let id: Int
    let title: String
    let image: String
    let tintColor: Color
    let duration: String
    let date: String
    let calories: String
}

struct WorkoutCard: View {
    @State var workout: Workout
    
    var body: some View {
        HStack {
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(50)
            
            VStack(spacing: 10) {
                HStack {
                    Text(workout.title)
                        .fontWeight(.semibold)
                    Spacer()
                    
                    Text(workout.duration)
                }
                
                HStack {
                    Text(workout.date)
                    
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
        }
        .padding()
        .background(.gray.opacity(0.05))
        .cornerRadius(12)
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, title: "Running", image: "figure.run", tintColor: .accent2, duration: "23 min", date: "Aug 1", calories: "235 cal"))
}
