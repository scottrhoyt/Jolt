//
//  ArrayTrigonometricExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class ArrayTrigonometricExtensionsTests: XCTestCase {

    func test_calls_cos() {
        XCTAssertEqual(TrigonometricCalls.Cos, [TrigonometricCalls]().cos()[0])
    }

    func test_calls_sin() {
        XCTAssertEqual(TrigonometricCalls.Sin, [TrigonometricCalls]().sin()[0])
    }
    
    func test_calls_tan() {
        XCTAssertEqual(TrigonometricCalls.Tan, [TrigonometricCalls]().tan()[0])
    }
    
    func test_calls_acos() {
        XCTAssertEqual(TrigonometricCalls.Acos, [TrigonometricCalls]().acos()[0])
    }
    
    func test_calls_asin() {
        XCTAssertEqual(TrigonometricCalls.Asin, [TrigonometricCalls]().asin()[0])
    }
    
    func test_calls_atan() {
        XCTAssertEqual(TrigonometricCalls.Atan, [TrigonometricCalls]().atan()[0])
    }
    
    func test_calls_deg2rad() {
        XCTAssertEqual(TrigonometricCalls.Deg2Rad, [TrigonometricCalls]().deg2rad()[0])
    }
    
    func test_calls_rad2deg() {
        XCTAssertEqual(TrigonometricCalls.Rad2Deg, [TrigonometricCalls]().rad2deg()[0])
    }
    
    func test_calls_sincos() {
        XCTAssertEqual(TrigonometricCalls.SinCos, [TrigonometricCalls]().sincos().1[0])
    }
}
