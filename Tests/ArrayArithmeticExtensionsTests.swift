//
//  ArrayArithmeticExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

private enum ArithmeticCalls : VectorArithmetic {
    
    case Add1, Add2, Sub1, Sub2, Sub3, Mul1, Mul2, Div1, Div2, Div3, Mod1, Mod2, Remainder1, Remainder2, Zero, One, NegativeOne
    
    static func add(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Add1]
    }
    
    static func add(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Add2]
    }

    static func sub(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Sub1]
    }
    
    static func sub(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Sub2]
    }
    
    static func sub(x: ArithmeticCalls, _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Sub3]
    }
    
    static func mul(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Mul1]
    }
    
    static func mul(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Mul2]
    }
    
    static func div(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Div1]
    }
    
    static func div(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Div2]
    }
    
    static func div(x: ArithmeticCalls, _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Div3]
    }
    
    static func mod(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Mod1]
    }
    
    static func remainder(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Remainder1]
    }
    
    static func mod(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Mod2]
    }
    
    static func remainder(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Remainder2]
    }
    
    static func zero() -> ArithmeticCalls {
        return .Zero
    }
    
    static func one() -> ArithmeticCalls {
        return .One
    }
    
    static func negativeOne() -> ArithmeticCalls {
        return .NegativeOne
    }
    
}

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
    
//    func test_calls_sub3() {
//        XCTAssertEqual(ArithmeticCalls.Sub3, [ArithmeticCalls]().sub([ArithmeticCalls]())[0])
//    }
    
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
    
//    func test_calls_div3() {
//        XCTAssertEqual(ArithmeticCalls.Div3, [ArithmeticCalls]().add([ArithmeticCalls]())[0])
//    }
    
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
    
//    func test_calls_one() {
//        XCTAssertEqual(ArithmeticCalls.One, [ArithmeticCalls]().add([ArithmeticCalls]())[0])
//    }
//    
//    func test_calls_zero() {
//        XCTAssertEqual(ArithmeticCalls.Zero, [ArithmeticCalls]().add([ArithmeticCalls]())[0])
//    }
//    
//    func test_calls_negativeOne() {
//        XCTAssertEqual(ArithmeticCalls.NegativeOne, [ArithmeticCalls]().add([ArithmeticCalls]())[0])
//    }

}
