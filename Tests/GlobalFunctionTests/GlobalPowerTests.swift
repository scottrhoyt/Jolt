//
//  GlobalPowerTests.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class GlobalPowerTests: XCTestCase {

    let testVector = [PowerCalls]()
    
    func test_array_calls_pow() {
        XCTAssertEqual(PowerCalls.Pow, pow(testVector, testVector)[0])
    }
    
    func test_array_calls_pow2() {
        XCTAssertEqual(PowerCalls.Pow2, pow(testVector, PowerCalls.None)[0])
    }
    
    func test_array_calls_sqrt() {
        XCTAssertEqual(PowerCalls.Sqrt, sqrt(testVector)[0])
    }

}
