//
//  ArrayHyperbolicExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

private enum HyperbolicCalls : VectorHyperbolic {
    
    case Cosh, Sinh, Tanh, Acosh, Asinh, Atanh
    
    static func cosh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Cosh]
    }
    
    static func sinh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Sinh]
    }
    
    static func tanh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Tanh]
    }
    
    static func acosh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Acosh]
    }
    
    static func asinh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Asinh]
    }
    
    static func atanh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Atanh]
    }
    
}

class ArrayHyperbolicExtensionsTests: XCTestCase {

    func test_calls_cosh() {
        XCTAssertEqual(HyperbolicCalls.Cosh, [HyperbolicCalls]().cosh()[0])
    }

    func test_calls_sinh() {
        XCTAssertEqual(HyperbolicCalls.Sinh, [HyperbolicCalls]().sinh()[0])
    }
    
    func test_calls_tanh() {
        XCTAssertEqual(HyperbolicCalls.Tanh, [HyperbolicCalls]().tanh()[0])
    }
    
    func test_calls_acosh() {
        XCTAssertEqual(HyperbolicCalls.Acosh, [HyperbolicCalls]().acosh()[0])
    }
    
    func test_calls_asinh() {
        XCTAssertEqual(HyperbolicCalls.Asinh, [HyperbolicCalls]().asinh()[0])
    }
    
    func test_calls_atanh() {
        XCTAssertEqual(HyperbolicCalls.Atanh, [HyperbolicCalls]().atanh()[0])
    }
}
