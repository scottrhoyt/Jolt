//
//  ArrayArithmeticTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

class ArrayPowerTests: XCTestCase {
    
    func test_array_calls_pow() {
        let a = [PowerCalls]()
        let b = [PowerCalls]()
        XCTAssertEqual(PowerCalls.Pow, a.pow(b)[0])
    }
    
    func test_array_calls_pow2() {
        let a = [PowerCalls]()
        let b = PowerCalls.Pow
        XCTAssertEqual(PowerCalls.Pow2, a.pow(b)[0])
    }
    
    func test_array_calls_sqrt() {
        let a = [PowerCalls]()
        XCTAssertEqual(PowerCalls.Sqrt, a.sqrt()[0])
    }

}
