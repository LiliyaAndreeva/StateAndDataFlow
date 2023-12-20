//
//  SettingsManager.swift
//  StateAndDataFlow
//
//  Created by Лилия Андреева on 20.12.2023.
//

import Foundation
import Combine

class SettingsManager: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    @SettingDefaults(key: "isLoggedIn", defaultValue: false)
    var isLoggedIn: Bool {
        willSet {
            objectWillChange.send()
        }
        didSet {
            print("isLoggedIn \(isLoggedIn) now")
        }
    }
    
    @SettingDefaults(key: "name", defaultValue: "")
    var name: String {
        willSet {
            objectWillChange.send()
        }
        didSet {
            print("name is \(name) now")
        }
    }
}
