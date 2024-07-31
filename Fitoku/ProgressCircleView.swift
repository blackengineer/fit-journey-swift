//
//  ProgressCircleView.swift
//  Fitoku
//
//  Created by jimmy on 7/31/24.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var progress: Int
    var goal: Int
    var color: Color
    private let width: CGFloat = 12
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(color.opacity(0.5),lineWidth: width)
            
            Circle()
                .trim(from: 0, to: CGFloat(progress) / CGFloat(goal))
                .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
        .padding()
    }
}

#Preview {
    ProgressCircleView(progress: .constant(100), goal: 200, color: .accent1)
}
