//
//  GlobalHyperbolicTests.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class GlobalHyperbolicTests: XCTestCase {

    let testVector = [HyperbolicCalls]()
    
    func test_calls_cosh() {
        XCTAssertEqual(HyperbolicCalls.Cosh, cosh(testVector)[0])
    }
    
    func test_calls_sinh() {
        XCTAssertEqual(HyperbolicCalls.Sinh, sinh(testVector)[0])
    }
    
    func test_calls_tanh() {
        XCTAssertEqual(HyperbolicCalls.Tanh, tanh(testVector)[0])
    }
    
    func test_calls_acosh() {
        XCTAssertEqual(HyperbolicCalls.Acosh, acosh(testVector)[0])
    }
    
    func test_calls_asinh() {
        XCTAssertEqual(HyperbolicCalls.Asinh, asinh(testVector)[0])
    }
    
    func test_calls_atanh() {
        XCTAssertEqual(HyperbolicCalls.Atanh, atanh(testVector)[0])
    }

}
