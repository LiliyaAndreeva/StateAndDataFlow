//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Лилия Андреева on 20.12.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @ObservedObject var settings: SettingsManager
    
    
    var body: some View {
        VStack {
            Text("Hi, \(settings.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            ButtonSwiftUIView(timer: timer)
            
            Spacer()
            Button("Logout") {
                settings.isLoggedIn.toggle()
            }
            .bordered()
        }
    }
}

#Preview {
    ContentView(settings: SettingsManager())
}


struct BorderedModelForButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .frame(width: 200, height: 60)
            .background(.blue)
            .clipShape(.rect(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 4)
        )
    }
}

extension Button {
    func bordered() -> some View {
        ModifiedContent(
            content: self,
            modifier: BorderedModelForButton()
        )
    }
}



