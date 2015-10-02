//
//  ArrayExponentialExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class ArrayExponentialExtensionsTests: XCTestCase {

    func test_calls_exp() {
        XCTAssertEqual(ExponentialCalls.Exp, [ExponentialCalls]().exp()[0])
    }
    
    func test_calls_exp2() {
        XCTAssertEqual(ExponentialCalls.Exp2, [ExponentialCalls]().exp2()[0])
    }
    
    func test_calls_log() {
        XCTAssertEqual(ExponentialCalls.Log, [ExponentialCalls]().log()[0])
    }
    
    func test_calls_log2() {
        XCTAssertEqual(ExponentialCalls.Log2, [ExponentialCalls]().log2()[0])
    }
    
    func test_calls_log10() {
        XCTAssertEqual(ExponentialCalls.Log10, [ExponentialCalls]().log10()[0])
    }
    
    func test_calls_logb() {
        XCTAssertEqual(ExponentialCalls.Logb, [ExponentialCalls]().logb()[0])
    }

}
