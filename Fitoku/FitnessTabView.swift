//
//  FitnessTabView.swift
//  Fitoku
//
//  Created by jimmy on 7/31/24.
//

import SwiftUI

struct FitnessTabView: View {
    
    @State var selectedTab = "Dashboard"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .accent1
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.accent1]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tag("Dashboard")
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Dashboard")
                }
            
            HistoricDataView()
                .tag("History")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
