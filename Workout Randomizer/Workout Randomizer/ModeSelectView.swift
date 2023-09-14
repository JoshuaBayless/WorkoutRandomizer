//
//  ContentView.swift
//  Workout Randomizer
//
//  Created by Josh  Bayless on 9/13/23.
//

import SwiftUI
import CoreData

struct ModeSelectView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    Text("FreestyleView")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
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
                NavigationLink {
                    Text("WorkoutView")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .ignoresSafeArea(.all)
                            .foregroundColor(.red)
                        VStack {
                            Text("Workout")
                                .padding(.bottom)
                                .font(.headline)
                            Text("Select your template, interval, and how many rounds you want to workout for and have a training circut right at your fingertips")
                                .padding(.horizontal)
                                .font(.footnote)
                        }
                        .foregroundColor(.black)
                    }
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
