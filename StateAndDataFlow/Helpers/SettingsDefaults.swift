//
//  SettingsDefaults.swift
//  StateAndDataFlow
//
//  Created by Лилия Андреева on 20.12.2023.
//

import Foundation

@propertyWrapper
struct SettingDefaults <T> {
    let key: String
    let defaultValue: T
    
    init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}
