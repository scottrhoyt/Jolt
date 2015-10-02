//
//  ArrayHyperbolicExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class ArrayHyperbolicExtensionsTests: XCTestCase {
    
    let testVector = [HyperbolicCalls]()

    func test_calls_cosh() {
        XCTAssertEqual(HyperbolicCalls.Cosh, testVector.cosh()[0])
    }

    func test_calls_sinh() {
        XCTAssertEqual(HyperbolicCalls.Sinh, testVector.sinh()[0])
    }
    
    func test_calls_tanh() {
        XCTAssertEqual(HyperbolicCalls.Tanh, testVector.tanh()[0])
    }
    
    func test_calls_acosh() {
        XCTAssertEqual(HyperbolicCalls.Acosh, testVector.acosh()[0])
    }
    
    func test_calls_asinh() {
        XCTAssertEqual(HyperbolicCalls.Asinh, testVector.asinh()[0])
    }
    
    func test_calls_atanh() {
        XCTAssertEqual(HyperbolicCalls.Atanh, testVector.atanh()[0])
    }
}
