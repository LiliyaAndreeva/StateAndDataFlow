//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Лилия Андреева on 20.12.2023.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @ObservedObject var settingsManager = SettingsManager()
    
    var body: some Scene {
        WindowGroup {
            RootView(settings: settingsManager)
        }
    }
}
