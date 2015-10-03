//
//  ArrayOtherExtensionsTests.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class ArrayOtherExtensionsTests: XCTestCase {
    
    let testVector = [OtherCalls]()

    func test_calls_asum() {
        let a = testVector
        XCTAssertEqual(OtherCalls.Asum, a.asum())
    }
    
    func test_calls_meamg() {
        let a = testVector
        XCTAssertEqual(OtherCalls.Meamg, a.meamg())
    }
    
    func test_calls_measq() {
        let a = testVector
        XCTAssertEqual(OtherCalls.Measq, a.measq())
    }

}
