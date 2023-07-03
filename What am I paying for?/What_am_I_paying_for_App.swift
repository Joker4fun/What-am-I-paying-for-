//
//  What_am_I_paying_for_App.swift
//  What am I paying for?
//
//  Created by Антон Казеннов on 02.07.2023.
//

import SwiftUI

@main
struct What_am_I_paying_for_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
