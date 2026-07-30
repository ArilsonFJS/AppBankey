//
//  DecimalUtils.swift
//  AppBankey
//
//  Created by Arilson Silva on 13/08/26.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
