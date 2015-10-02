//
//  ArrayArithmeticTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class ArrayPowerTests: XCTestCase {
    
    let testVector = [PowerCalls]()
    
    func test_array_calls_pow() {
        let a = testVector
        let b = testVector
        XCTAssertEqual(PowerCalls.Pow, a.pow(b)[0])
    }
    
    func test_array_calls_pow2() {
        let a = testVector
        let b = PowerCalls.None
        XCTAssertEqual(PowerCalls.Pow2, a.pow(b)[0])
    }
    
    func test_array_calls_sqrt() {
        let a = testVector
        XCTAssertEqual(PowerCalls.Sqrt, a.sqrt()[0])
    }

}
