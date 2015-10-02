//
//  ArrayArithmeticExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class ArrayArithmeticExtensionsTests: XCTestCase {
    
    let testVector = [ArithmeticCalls]()
    let testValue = ArithmeticCalls.None

    func test_calls_add1() {
        XCTAssertEqual(ArithmeticCalls.Add1, testVector.add(testVector)[0])
    }
    
    func test_calls_add2() {
        XCTAssertEqual(ArithmeticCalls.Add2, testVector.add(testValue)[0])
    }
    
    func test_calls_sub1() {
        XCTAssertEqual(ArithmeticCalls.Sub1, testVector.sub(testVector)[0])
    }
    
    func test_calls_sub2() {
        XCTAssertEqual(ArithmeticCalls.Sub2, testVector.sub(testValue)[0])
    }
    
    func test_calls_mul1() {
        XCTAssertEqual(ArithmeticCalls.Mul1, testVector.mul(testVector)[0])
    }
    
    func test_calls_mul2() {
        XCTAssertEqual(ArithmeticCalls.Mul2, testVector.mul(testValue)[0])
    }
    
    func test_calls_div1() {
        XCTAssertEqual(ArithmeticCalls.Div1, testVector.div(testVector)[0])
    }
    
    func test_calls_div2() {
        XCTAssertEqual(ArithmeticCalls.Div2, testVector.div(testValue)[0])
    }
    
    func test_calls_mod1() {
        XCTAssertEqual(ArithmeticCalls.Mod1, testVector.mod(testVector)[0])
    }
    
    func test_calls_mod2() {
        XCTAssertEqual(ArithmeticCalls.Mod2, testVector.mod(testValue)[0])
    }
    
    func test_calls_remainder1() {
        XCTAssertEqual(ArithmeticCalls.Remainder1, testVector.remainder(testVector)[0])
    }
    
    func test_calls_remainder2() {
        XCTAssertEqual(ArithmeticCalls.Remainder2, testVector.remainder(testValue)[0])
    }

}
