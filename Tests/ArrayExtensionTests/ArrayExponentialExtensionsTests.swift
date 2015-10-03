//
//  ArrayExponentialExtensionsTests.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class ArrayExponentialExtensionsTests: XCTestCase {
    
    let testVector = [ExponentialCalls]()

    func test_calls_exp() {
        XCTAssertEqual(ExponentialCalls.Exp, testVector.exp()[0])
    }
    
    func test_calls_exp2() {
        XCTAssertEqual(ExponentialCalls.Exp2, testVector.exp2()[0])
    }
    
    func test_calls_log() {
        XCTAssertEqual(ExponentialCalls.Log, testVector.log()[0])
    }
    
    func test_calls_log2() {
        XCTAssertEqual(ExponentialCalls.Log2, testVector.log2()[0])
    }
    
    func test_calls_log10() {
        XCTAssertEqual(ExponentialCalls.Log10, testVector.log10()[0])
    }
    
    func test_calls_logb() {
        XCTAssertEqual(ExponentialCalls.Logb, testVector.logb()[0])
    }

}
