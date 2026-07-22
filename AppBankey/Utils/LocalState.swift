//
//  LocalState.swift
//  AppBankey
//
//  Created by Arilson Silva on 21/07/26.
//

import Foundation
class LocalState {
    private enum Keys: String {
        case hasOnboarded
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue)
        }
        
        set (newValue) {
            UserDefaults.standard.setValue(newValue, forKey: Keys.hasOnboarded.rawValue)
        }
    }
}
