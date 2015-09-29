//
//  ArrayArithmeticTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

private enum PowerCalls : VectorPower {
    
    case CalledPow, CalledPow2, CalledSqrt
    
    static func pow(x: [PowerCalls], _ y: [PowerCalls]) -> [PowerCalls] {
        return [.CalledPow]
    }
    
    static func sqrt(x: [PowerCalls]) -> [PowerCalls] {
        return [.CalledSqrt]
    }
    
    static func pow(x: [PowerCalls], _ y: PowerCalls) -> [PowerCalls] {
        return [.CalledPow2]
    }
    
}

class ArrayPowerTests: XCTestCase {
    
    func test_array_calls_pow() {
        let a = [PowerCalls]()
        let b = [PowerCalls]()
        XCTAssertEqual(PowerCalls.CalledPow, a.pow(b)[0])
    }
    
    func test_array_calls_pow2() {
        let a = [PowerCalls]()
        let b = PowerCalls.CalledPow
        XCTAssertEqual(PowerCalls.CalledPow2, a.pow(b)[0])
    }
    
    func test_array_calls_sqrt() {
        let a = [PowerCalls]()
        XCTAssertEqual(PowerCalls.CalledSqrt, a.sqrt()[0])
    }

}
