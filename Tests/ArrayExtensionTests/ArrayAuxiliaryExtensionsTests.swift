//
//  ArrayAuxiliaryExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class ArrayAuxiliaryExtensionsTests: XCTestCase {
    
    let testVector = [AuxiliaryCalls]()
    let testValue = AuxiliaryCalls.None

    func test_calls_ceil() {
        XCTAssertEqual(AuxiliaryCalls.Ceil, testVector.ceil()[0])
    }
    
    func test_calls_floor() {
        XCTAssertEqual(AuxiliaryCalls.Floor, testVector.floor()[0])
    }
    
    func test_calls_clip() {
        XCTAssertEqual(AuxiliaryCalls.Clip, testVector.clip(testValue, testValue)[0])
    }
    
    func test_calls_threshold() {
        XCTAssertEqual(AuxiliaryCalls.Threshold, testVector.threshold(testValue)[0])
    }
    
    func test_calls_abs() {
        XCTAssertEqual(AuxiliaryCalls.Abs, testVector.abs()[0])
    }
    
    func test_calls_copysign() {
        XCTAssertEqual(AuxiliaryCalls.CopySign, testVector.copysign(testVector)[0])
    }
    
    func test_calls_neg() {
        XCTAssertEqual(AuxiliaryCalls.Neg, testVector.neg()[0])
    }
    
    func test_calls_rec() {
        XCTAssertEqual(AuxiliaryCalls.Rec, testVector.rec()[0])
    }
    
    func test_calls_round() {
        XCTAssertEqual(AuxiliaryCalls.Round, testVector.round()[0])
    }
    
    func test_calls_trunc() {
        XCTAssertEqual(AuxiliaryCalls.Trunc, testVector.trunc()[0])
    }

}
