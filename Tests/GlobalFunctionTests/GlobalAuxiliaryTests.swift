//
//  GlobalAuxiliaryTests.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class GlobalAuxiliaryTests: XCTestCase {
    
    let testVector = [AuxiliaryCalls]()
    let testValue = AuxiliaryCalls.None

    func test_calls_ceil() {
        XCTAssertEqual(AuxiliaryCalls.Ceil, ceil(testVector)[0])
    }
    
    func test_calls_floor() {
        XCTAssertEqual(AuxiliaryCalls.Floor, floor(testVector)[0])
    }
    
    func test_calls_clip() {
        XCTAssertEqual(AuxiliaryCalls.Clip, clip(testVector, testValue, testValue)[0])
    }
    
    func test_calls_threshold() {
        XCTAssertEqual(AuxiliaryCalls.Threshold, threshold(testVector, testValue)[0])
    }
    
    func test_calls_abs() {
        XCTAssertEqual(AuxiliaryCalls.Abs, abs(testVector)[0])
    }
    
    func test_calls_copysign() {
        XCTAssertEqual(AuxiliaryCalls.CopySign, copysign(testVector, testVector)[0])
    }
    
    func test_calls_neg() {
        XCTAssertEqual(AuxiliaryCalls.Neg, neg(testVector)[0])
    }
    
    func test_calls_rec() {
        XCTAssertEqual(AuxiliaryCalls.Rec, rec(testVector)[0])
    }
    
    func test_calls_round() {
        XCTAssertEqual(AuxiliaryCalls.Round, round(testVector)[0])
    }
    
    func test_calls_trunc() {
        XCTAssertEqual(AuxiliaryCalls.Trunc, trunc(testVector)[0])
    }

}
