//
//  ArrayArithmeticTests.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class ArrayPowerTests: XCTestCase {
    
    let testVector = [PowerCalls]()
    
    func test_array_calls_pow() {
        XCTAssertEqual(PowerCalls.Pow, testVector.pow(testVector)[0])
    }
    
    func test_array_calls_pow2() {
        XCTAssertEqual(PowerCalls.Pow2, testVector.pow(PowerCalls.None)[0])
    }
    
    func test_array_calls_sqrt() {
        XCTAssertEqual(PowerCalls.Sqrt, testVector.sqrt()[0])
    }

}
