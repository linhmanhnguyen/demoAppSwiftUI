//
//  MyAppApp.swift
//  MyApp
//
//  Created by Nguyễn Mạnh Linh on 10/05/2023.
//

import SwiftUI

@main
struct MyAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
          WelcomeView()
        }
    }
}
