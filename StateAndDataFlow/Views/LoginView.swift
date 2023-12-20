//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Лилия Андреева on 20.12.2023.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var settings: SettingsManager
    @State private var name = ""
    
    
    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text(name.count.formatted())
                    .foregroundStyle(
                          name.count >= 3
                          ? Color.green
                            : Color.red
                    )
                    .padding(.trailing, 20)
            }
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
                    .disabled(name.count < 3)
            }
        }
    }
    
    private func login() {
        if !name.isEmpty {
            settings.name = name
            settings.isLoggedIn.toggle()
        }
    }
}

#Preview {
    LoginView(settings: SettingsManager())
}

