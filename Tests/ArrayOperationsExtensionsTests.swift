//
//  ArrayOperationsExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class ArrayOperationsExtensionsTests: XCTestCase {
    
    let testVector = [OperationsCalls]()

    func test_calls_dot() {
        let a = testVector
        let b = testVector
        XCTAssertEqual(OperationsCalls.Dot, a.dot(b))
    }
    
    func test_calls_magnitude() {
        let a = testVector
        XCTAssertEqual(OperationsCalls.Magnitude, a.magnitude())
    }
    
    func test_calls_unit() {
        let a = testVector
        XCTAssertEqual(OperationsCalls.Unit, a.unit()[0])
    }

}
