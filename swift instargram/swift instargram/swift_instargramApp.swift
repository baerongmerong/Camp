//
//  swift_instargramApp.swift
//  swift instargram
//
//  Created by Bae on 1/30/24.
//

import SwiftUI

@main
struct swift_instargramApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
