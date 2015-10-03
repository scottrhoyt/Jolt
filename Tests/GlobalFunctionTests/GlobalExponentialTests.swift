//
//  GlobalExponentialTests.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class GlobalExponentialTests: XCTestCase {

    let testVector = [ExponentialCalls]()
    
    func test_calls_exp() {
        XCTAssertEqual(ExponentialCalls.Exp, exp(testVector)[0])
    }
    
    func test_calls_exp2() {
        XCTAssertEqual(ExponentialCalls.Exp2, exp2(testVector)[0])
    }
    
    func test_calls_log() {
        XCTAssertEqual(ExponentialCalls.Log, log(testVector)[0])
    }
    
    func test_calls_log2() {
        XCTAssertEqual(ExponentialCalls.Log2, log2(testVector)[0])
    }
    
    func test_calls_log10() {
        XCTAssertEqual(ExponentialCalls.Log10, log10(testVector)[0])
    }
    
    func test_calls_logb() {
        XCTAssertEqual(ExponentialCalls.Logb, logb(testVector)[0])
    }

}
