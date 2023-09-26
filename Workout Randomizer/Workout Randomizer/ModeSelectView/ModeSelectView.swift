//
//  ContentView.swift
//  Workout Randomizer
//
//  Created by Josh  Bayless on 9/13/23.
//

import SwiftUI
import CoreData

struct ModeSelectView: View {
    
    @State var displayWorkoutSetupView: Bool = false
    @State var displaySpinnerView: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                NavigationLink {
                    Text("FreestyleView")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 0)
                            .ignoresSafeArea(.all)
                            .foregroundColor(.blue)
                        VStack {
                            Text("Freestyle")
                                .padding(.bottom)
                                .font(.headline)
                            Text("Spin to your heart's content")
                                .font(.footnote)
                        }
                        .foregroundColor(.black)
                    }
                }
                Button {
                    displayWorkoutSetupView.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 0)
                            .ignoresSafeArea(.all)
                            .foregroundColor(.red)
                        VStack {
                            Text("Workout")
                                .padding(.bottom)
                                .font(.headline)
                            Text("Select your template, interval, and how many rounds you want to workout for and have a new training circut right at your fingertips")
                                .padding(.horizontal)
                                .font(.footnote)
                        }
                        .foregroundColor(.black)
                    }
                }
                .popover(isPresented: $displayWorkoutSetupView) {
                    Text("WorkoutView")
                }
            }
            .toolbar {
                Button {
                    displaySpinnerView.toggle()
                } label: {
                    HStack {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(.white)
                        Text("Spinner View")
                            .foregroundColor(.white)
                    }
                    
                    .interactiveDismissDisabled()
                }
                .popover(isPresented: $displaySpinnerView) {
                    SpinnerTestView()
                }
            }
        }
    }
}

struct ModeSelectView_Previews: PreviewProvider {
    static var previews: some View {
        ModeSelectView()
    }
}
