//
//  ArrayTrigonometricExtensionsTests.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class ArrayTrigonometricExtensionsTests: XCTestCase {
    
    let testVector = [TrigonometricCalls]()

    func test_calls_cos() {
        XCTAssertEqual(TrigonometricCalls.Cos, testVector.cos()[0])
    }

    func test_calls_sin() {
        XCTAssertEqual(TrigonometricCalls.Sin, testVector.sin()[0])
    }
    
    func test_calls_tan() {
        XCTAssertEqual(TrigonometricCalls.Tan, testVector.tan()[0])
    }
    
    func test_calls_acos() {
        XCTAssertEqual(TrigonometricCalls.Acos, testVector.acos()[0])
    }
    
    func test_calls_asin() {
        XCTAssertEqual(TrigonometricCalls.Asin, testVector.asin()[0])
    }
    
    func test_calls_atan() {
        XCTAssertEqual(TrigonometricCalls.Atan, testVector.atan()[0])
    }
    
    func test_calls_deg2rad() {
        XCTAssertEqual(TrigonometricCalls.Deg2Rad, testVector.deg2rad()[0])
    }
    
    func test_calls_rad2deg() {
        XCTAssertEqual(TrigonometricCalls.Rad2Deg, testVector.rad2deg()[0])
    }
    
    func test_calls_sincos() {
        XCTAssertEqual(TrigonometricCalls.SinCos, testVector.sincos().1[0])
    }
}
