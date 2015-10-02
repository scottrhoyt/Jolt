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

    func test_calls_add1() {
        XCTAssertEqual(ArithmeticCalls.Add1, [ArithmeticCalls]().add([ArithmeticCalls]())[0])
    }
    
    func test_calls_add2() {
        XCTAssertEqual(ArithmeticCalls.Add2, [ArithmeticCalls]().add(ArithmeticCalls.Add2)[0])
    }
    
    func test_calls_sub1() {
        XCTAssertEqual(ArithmeticCalls.Sub1, [ArithmeticCalls]().sub([ArithmeticCalls]())[0])
    }
    
    func test_calls_sub2() {
        XCTAssertEqual(ArithmeticCalls.Sub2, [ArithmeticCalls]().sub(ArithmeticCalls.Sub2)[0])
    }
    
    func test_calls_mul1() {
        XCTAssertEqual(ArithmeticCalls.Mul1, [ArithmeticCalls]().mul([ArithmeticCalls]())[0])
    }
    
    func test_calls_mul2() {
        XCTAssertEqual(ArithmeticCalls.Mul2, [ArithmeticCalls]().mul(ArithmeticCalls.Mul2)[0])
    }
    
    func test_calls_div1() {
        XCTAssertEqual(ArithmeticCalls.Div1, [ArithmeticCalls]().div([ArithmeticCalls]())[0])
    }
    
    func test_calls_div2() {
        XCTAssertEqual(ArithmeticCalls.Div2, [ArithmeticCalls]().div(ArithmeticCalls.Div2)[0])
    }
    
    func test_calls_mod1() {
        XCTAssertEqual(ArithmeticCalls.Mod1, [ArithmeticCalls]().mod([ArithmeticCalls]())[0])
    }
    
    func test_calls_mod2() {
        XCTAssertEqual(ArithmeticCalls.Mod2, [ArithmeticCalls]().mod(ArithmeticCalls.Mod2)[0])
    }
    
    func test_calls_remainder1() {
        XCTAssertEqual(ArithmeticCalls.Remainder1, [ArithmeticCalls]().remainder([ArithmeticCalls]())[0])
    }
    
    func test_calls_remainder2() {
        XCTAssertEqual(ArithmeticCalls.Remainder2, [ArithmeticCalls]().remainder(ArithmeticCalls.Remainder2)[0])
    }

}
