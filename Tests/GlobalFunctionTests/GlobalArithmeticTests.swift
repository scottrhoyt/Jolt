//
//  GlobalArithmeticTests.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class GlobalArithmeticTests: XCTestCase {

    func test_calls_add1() {
        XCTAssertEqual(ArithmeticCalls.Add1, add([ArithmeticCalls](),[ArithmeticCalls]())[0])
    }
    
    func test_calls_add2() {
        XCTAssertEqual(ArithmeticCalls.Add2, add([ArithmeticCalls](),ArithmeticCalls.Add2)[0])
    }
    
    func test_calls_add3() {
        XCTAssertEqual(ArithmeticCalls.Add2, add(ArithmeticCalls.Add2, [ArithmeticCalls]())[0])
    }
    
    func test_calls_sub1() {
        XCTAssertEqual(ArithmeticCalls.Sub1, sub([ArithmeticCalls](),[ArithmeticCalls]())[0])
    }
    
    func test_calls_sub2() {
        XCTAssertEqual(ArithmeticCalls.Sub2, sub([ArithmeticCalls](),ArithmeticCalls.Sub2)[0])
    }
    
    func test_calls_sub3() {
        XCTAssertEqual(ArithmeticCalls.Sub3, sub(ArithmeticCalls.Sub3,[ArithmeticCalls]())[0])
    }
    
    func test_calls_mul1() {
        XCTAssertEqual(ArithmeticCalls.Mul1, mul([ArithmeticCalls](),[ArithmeticCalls]())[0])
    }
    
    func test_calls_mul2() {
        XCTAssertEqual(ArithmeticCalls.Mul2, mul([ArithmeticCalls](),ArithmeticCalls.Mul2)[0])
    }
    
    func test_calls_mul3() {
        XCTAssertEqual(ArithmeticCalls.Mul2, mul(ArithmeticCalls.Mul2,[ArithmeticCalls]())[0])
    }
    
    func test_calls_div1() {
        XCTAssertEqual(ArithmeticCalls.Div1, div([ArithmeticCalls](),[ArithmeticCalls]())[0])
    }
    
    func test_calls_div2() {
        XCTAssertEqual(ArithmeticCalls.Div2, div([ArithmeticCalls](),ArithmeticCalls.Div2)[0])
    }
    
    func test_calls_div3() {
        XCTAssertEqual(ArithmeticCalls.Div3, div(ArithmeticCalls.Div3,[ArithmeticCalls]())[0])
    }
    
    func test_calls_mod1() {
        XCTAssertEqual(ArithmeticCalls.Mod1, mod([ArithmeticCalls](),[ArithmeticCalls]())[0])
    }
    
    func test_calls_mod2() {
        XCTAssertEqual(ArithmeticCalls.Mod2, mod([ArithmeticCalls](),ArithmeticCalls.Mod2)[0])
    }
    
    func test_calls_mod3() {
        XCTAssertEqual(ArithmeticCalls.Mod3, mod(ArithmeticCalls.Mod3,[ArithmeticCalls]())[0])
    }
    
    func test_calls_remainder1() {
        XCTAssertEqual(ArithmeticCalls.Remainder1, remainder([ArithmeticCalls](),[ArithmeticCalls]())[0])
    }
    
    func test_calls_remainder2() {
        XCTAssertEqual(ArithmeticCalls.Remainder2, remainder([ArithmeticCalls](),ArithmeticCalls.Remainder2)[0])
    }
    
    func test_calls_remainder3() {
        XCTAssertEqual(ArithmeticCalls.Remainder3, remainder(ArithmeticCalls.Remainder3,[ArithmeticCalls]())[0])
    }

}
