//
//  LoginTest.swift
//  AppBankeyUnitTests
//
//  Created by Arilson Silva on 26/08/26.
//

import Foundation
import XCTest

@testable import AppBankey

class PasswordValidatorTests: XCTestCase {
    
    var sut: PasswordValidator!
    
    override func setUp() {
        super.setUp()
        sut = PasswordValidator()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_isStrong_whenPasswordIsStrong_shouldReturnTrue() throws {
        let result = sut.isStrong("abcdefg8")
        XCTAssertTrue(result)
    }
    
    func test_isStrong_whenPasswordIsTooShort_shouldReturnFalse() throws {
        let result = sut.isStrong("1234567")
        XCTAssertFalse(result)
    }
    
    func test_isStrong_whenPasswordHasNoNumber_shouldReturnFalse() throws {
        let result = sut.isStrong("abcdefgh")
        XCTAssertFalse(result)
    }
}
