//
//  CurrencyFormatterTest.swift
//  AppBankeyUnitTests
//
//  Created by Arilson Silva on 20/08/26.
//

import Foundation
import XCTest

@testable import AppBankey

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "$929,466.23")
    }
    
    func testZeroDollarsFormtted() throws {
        let result = formatter.dollarsFormatted(00000.00)
        XCTAssertEqual(result, "$0.00")
    }
}
