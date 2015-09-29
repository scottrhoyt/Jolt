//
//  ArrayExponentialExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

private enum ExponentialCalls : VectorExponential {
    
    case Exp, Exp2, Log, Log2, Log10, Logb
    
    static func exp(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Exp]
    }
    
    static func exp2(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Exp2]
    }
    
    static func log(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Log]
    }
    
    static func log2(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Log2]
    }
    
    static func log10(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Log10]
    }
    
    static func logb(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Logb]
    }
    
}

class ArrayExponentialExtensionsTests: XCTestCase {

    func test_calls_exp() {
        XCTAssertEqual(ExponentialCalls.Exp, [ExponentialCalls]().exp()[0])
    }
    
    func test_calls_exp2() {
        XCTAssertEqual(ExponentialCalls.Exp2, [ExponentialCalls]().exp2()[0])
    }
    
    func test_calls_log() {
        XCTAssertEqual(ExponentialCalls.Log, [ExponentialCalls]().log()[0])
    }
    
    func test_calls_log2() {
        XCTAssertEqual(ExponentialCalls.Log2, [ExponentialCalls]().log2()[0])
    }
    
    func test_calls_log10() {
        XCTAssertEqual(ExponentialCalls.Log10, [ExponentialCalls]().log10()[0])
    }
    
    func test_calls_logb() {
        XCTAssertEqual(ExponentialCalls.Logb, [ExponentialCalls]().logb()[0])
    }

}
