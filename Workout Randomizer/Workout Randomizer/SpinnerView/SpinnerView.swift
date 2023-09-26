//
//  SpinnerView.swift
//  Workout Randomizer
//
//  Created by Josh  Bayless on 9/25/23.
//

import SwiftUI

struct SpinnerView: View {
    
    @Binding var exercises: Int /// For now this can be an int but eventually we will likely change to array of exercises
    
    var body: some View {
        ZStack {
            ForEach(0..<exercises, id: \.self) { exercise in
                SpinnerSection(startAngle: startAngle(for: exercise),
                               endAngle: endAngle(for: exercise))
                .fill(Color.random())
            }
        }
    }
    
    //MARK: - Helper functions
    private func startAngle(for index: Int) -> Angle {
        return .degrees(Double(index) / Double(exercises) * 360)
    }
    
    private func endAngle(for index: Int) -> Angle {
        return .degrees(Double(index + 1) / Double(exercises) * 360)
    }
}


struct SpinnerView_Previews: PreviewProvider {
    static var previews: some View {
        SpinnerView(exercises: .constant(8))
    }
}
