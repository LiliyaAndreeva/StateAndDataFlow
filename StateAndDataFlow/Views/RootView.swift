//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Лилия Андреева on 20.12.2023.
//

import SwiftUI

struct RootView: View {
    @ObservedObject var settings: SettingsManager
    
    var body: some View {
        Group {
            if settings.isLoggedIn {
                ContentView(settings: settings)
            } else {
                LoginView(settings: settings)
            }
        }
    }
}

#Preview {
    RootView(settings: SettingsManager())
}

