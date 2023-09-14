//
//  WorkoutRandomizerApp.swift
//  Workout Randomizer
//
//  Created by Josh  Bayless on 9/13/23.
//

import SwiftUI

@main
struct WorkoutRandomizerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ModeSelectView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
