//
//  ArrayAuxiliaryExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

class ArrayAuxiliaryExtensionsTests: XCTestCase {

    func test_calls_ceil() {
        XCTAssertEqual(AuxiliaryCalls.Ceil, [AuxiliaryCalls]().ceil()[0])
    }
    
    func test_calls_floor() {
        XCTAssertEqual(AuxiliaryCalls.Floor, [AuxiliaryCalls]().floor()[0])
    }
    
    func test_calls_clip() {
        XCTAssertEqual(AuxiliaryCalls.Clip, [AuxiliaryCalls]().clip(AuxiliaryCalls.Clip, AuxiliaryCalls.Clip)[0])
    }
    
    func test_calls_threshold() {
        XCTAssertEqual(AuxiliaryCalls.Threshold, [AuxiliaryCalls]().threshold(AuxiliaryCalls.Threshold)[0])
    }
    
    func test_calls_abs() {
        XCTAssertEqual(AuxiliaryCalls.Abs, [AuxiliaryCalls]().abs()[0])
    }
    
    func test_calls_copysign() {
        XCTAssertEqual(AuxiliaryCalls.CopySign, [AuxiliaryCalls]().copysign([AuxiliaryCalls]())[0])
    }
    
    func test_calls_neg() {
        XCTAssertEqual(AuxiliaryCalls.Neg, [AuxiliaryCalls]().neg()[0])
    }
    
    func test_calls_rec() {
        XCTAssertEqual(AuxiliaryCalls.Rec, [AuxiliaryCalls]().rec()[0])
    }
    
    func test_calls_round() {
        XCTAssertEqual(AuxiliaryCalls.Round, [AuxiliaryCalls]().round()[0])
    }
    
    func test_calls_trunc() {
        XCTAssertEqual(AuxiliaryCalls.Trunc, [AuxiliaryCalls]().trunc()[0])
    }

}
