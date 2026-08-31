//
//  PasswordValidator.swift
//  AppBankey
//
//  Created by Arilson Silva on 26/08/26.
//

import Foundation

struct PasswordValidator {
    
    func isStrong(_ password: String) -> Bool {
        
        let hasMinimo = password.count >= 8
        let hasNumber = password.contains { $0.isNumber }
        
        return hasMinimo && hasNumber
    }
}
