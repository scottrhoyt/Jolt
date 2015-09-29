//
//  ArrayOtherExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

private enum OtherCalls : VectorOther {
    
    case Asum, Meamg, Measq
    
    static func asum(x: [OtherCalls]) -> OtherCalls {
        return .Asum
    }
    
    static func meamg(x: [OtherCalls]) -> OtherCalls {
        return .Meamg
    }
    
    static func measq(x: [OtherCalls]) -> OtherCalls {
        return .Measq
    }
    
}

class ArrayOtherExtensionsTests: XCTestCase {

    func test_calls_asum() {
        let a = [OtherCalls]()
        XCTAssertEqual(OtherCalls.Asum, a.asum())
    }
    
    func test_calls_meamg() {
        let a = [OtherCalls]()
        XCTAssertEqual(OtherCalls.Meamg, a.meamg())
    }
    
    func test_calls_measq() {
        let a = [OtherCalls]()
        XCTAssertEqual(OtherCalls.Measq, a.measq())
    }

}
