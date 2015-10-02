//
//  ArrayOperationsExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

class ArrayOperationsExtensionsTests: XCTestCase {

    func test_calls_dot() {
        let a = [OperationsCalls]()
        let b = [OperationsCalls]()
        XCTAssertEqual(OperationsCalls.Dot, a.dot(b))
    }
    
    func test_calls_magnitude() {
        let a = [OperationsCalls]()
        XCTAssertEqual(OperationsCalls.Magnitude, a.magnitude())
    }
    
    func test_calls_unit() {
        let a = [OperationsCalls]()
        XCTAssertEqual(OperationsCalls.Unit, a.unit()[0])
    }

}
