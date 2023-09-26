//
//  SpinnerTestView.swift
//  Workout Randomizer
//
//  Created by Josh  Bayless on 9/25/23.
//

import SwiftUI

struct SpinnerTestView: View {
    
    
    @State var rotation: Double = 0
    
    @State private var numberOfExercises = 0
    
    var body: some View {
        VStack {
            Text("\(numberOfExercises)")
                .font(.largeTitle)
            Stepper("Number of Exercises ", value: $numberOfExercises, in: 0...10)
                .padding(.horizontal, 50)
            Spacer()
            SpinnerView(exercises: $numberOfExercises)
                .rotationEffect(.degrees(rotation))
            Spacer()
            Button(action: {
                withAnimation(.spring(response: 2, dampingFraction: 1.5)) {
                    /// Spin at least 5 times and end at a random point on the spinner
                    rotation += 1800 + Double.random(in: 0...360)
                }
            }, label: {
                Text("Spin!")
                    .bold()
            })
            .padding(.bottom, 30)
        }
    }
}

#Preview {
    SpinnerTestView()
}
