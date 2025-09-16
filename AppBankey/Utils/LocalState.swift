//
//  LocalState.swift
//  AppBankey
//
//  Created by Arilson Silva on 16/09/25.
//

import Foundation

class LocalState {
    
    private enum Keys: String {
        case hasOnBoarded
    }
    
    public static var hasOnBoarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnBoarded.rawValue)
        }
        
        set (newValue){
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnBoarded.rawValue)
            UserDefaults.standard.synchronize()
        }
    }
}
