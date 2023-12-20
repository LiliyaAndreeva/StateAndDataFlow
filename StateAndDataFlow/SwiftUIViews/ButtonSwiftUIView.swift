//
//  ButtonSwiftUIView.swift
//  StateAndDataFlow
//
//  Created by Лилия Андреева on 20.12.2023.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
        
    }
}

#Preview {
    ButtonSwiftUIView(timer: TimeCounter())
}

