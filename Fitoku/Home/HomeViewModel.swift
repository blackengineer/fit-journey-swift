//
//  HomeViewModel.swift
//  Fitoku
//
//  Created by jimmy on 8/1/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    var activeEnergy: Int = 196
    var exercise: Int = 48
    var stand: Int = 12
    
    var mockSteps = [
        Step(id: 0, title: "Today's Steps", subtitle: "Goal: 5,000", image: "figure.walk", tintColor: .accent1, amount: "2,278"),
        Step(id: 1, title: "Weekly Average", subtitle: "Goal: 7,500", image: "figure.walk", tintColor: .accent1, amount: "9,389")
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .accent2, duration: "30 min", date: "Aug 1", calories: "302 cal"),
        Workout(id: 1, title: "Functional Strength Training", image: "figure.strengthtraining.functional", tintColor: .accent2, duration: "45 min", date: "Aug 2", calories: "358 cal"),
        Workout(id: 2, title: "Traditional Strength Training", image: "figure.strengthtraining.traditional", tintColor: .accent2, duration: "60 min", date: "Aug 4", calories: "350 cal")
    ]
    
    var mockNutritions = [
        Nutrition(id: 0, title: "Protein", subtitle: "Goal: 124 g", image: "fork.knife", tintColor: .green, amount: "130 g"),
        Nutrition(id: 1, title: "Carbohydrate", subtitle: "Goal: 200 g", image: "fork.knife", tintColor: .green, amount: "240 g"),
        Nutrition(id: 2, title: "Fat", subtitle: "Goal: 50 g", image: "fork.knife", tintColor: .green, amount: "45 g"),
        Nutrition(id: 3, title: "Water", subtitle: "Goal: 90 oz", image: "waterbottle", tintColor: .green, amount: "75 oz")
    ]
    
    var mockHearts = [
        Heart(id: 0, title: "Resting Heart Rate", subtitle: "Goal: 50 bpm", image: "heart.fill", tintColor: .red, amount: "55 bpm"),
        Heart(id: 1, title: "Heart Rate Variability", subtitle: "Goal: 50 ms", image: "heart.fill", tintColor: .red, amount: "45 ms"),
        Heart(id: 2, title: "Average Walking Heart Rate", subtitle: "Goal: 70 bpm", image: "heart.fill", tintColor: .red, amount: "75 bpm"),
        Heart(id: 3, title: "Cardio Fitness", subtitle: "Goal: 60 VO2 max", image: "heart.fill", tintColor: .red, amount: "62.4 VO2 max")
    ]
    
    var mockSleeps = [
        Sleep(id: 0, title: "Average Time Asleep", image: "bed.double.fill", tintColor: .accent3, amount: "7.5 hr"),
        Sleep(id: 1, title: "Average Time In Bed", image: "bed.double.fill", tintColor: .accent3, amount: "8 hr")
    ]
    
    var mockBodyComps = [
        BodyComp(id: 0, title: "Weight", image: "figure", tintColor: .accent1, amount: "160 lb"),
        BodyComp(id: 1, title: "Body Fat Percentage", image: "figure", tintColor: .accent1, amount: "15.3"),
        BodyComp(id: 2, title: "Lean Mass", image: "figure", tintColor: .accent1, amount: "80 lb"),
        BodyComp(id: 3, title: "Fat Mass", image: "figure", tintColor: .accent1, amount: "80 lb")
    ]
}
