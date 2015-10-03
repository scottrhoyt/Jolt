//
//  GlobalTrigonometricTests.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class GlobalTrigonometricTests: XCTestCase {

    let testVector = [TrigonometricCalls]()
    
    func test_calls_cos() {
        XCTAssertEqual(TrigonometricCalls.Cos, cos(testVector)[0])
    }
    
    func test_calls_sin() {
        XCTAssertEqual(TrigonometricCalls.Sin, sin(testVector)[0])
    }
    
    func test_calls_tan() {
        XCTAssertEqual(TrigonometricCalls.Tan, tan(testVector)[0])
    }
    
    func test_calls_acos() {
        XCTAssertEqual(TrigonometricCalls.Acos, acos(testVector)[0])
    }
    
    func test_calls_asin() {
        XCTAssertEqual(TrigonometricCalls.Asin, asin(testVector)[0])
    }
    
    func test_calls_atan() {
        XCTAssertEqual(TrigonometricCalls.Atan, atan(testVector)[0])
    }
    
    func test_calls_deg2rad() {
        XCTAssertEqual(TrigonometricCalls.Deg2Rad, deg2rad(testVector)[0])
    }
    
    func test_calls_rad2deg() {
        XCTAssertEqual(TrigonometricCalls.Rad2Deg, rad2deg(testVector)[0])
    }
    
    func test_calls_sincos() {
        XCTAssertEqual(TrigonometricCalls.SinCos, sincos(testVector).1[0])
    }

}
