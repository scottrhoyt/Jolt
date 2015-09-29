//
//  ArrayOperationsExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

private enum OperationsCalls : VectorOperations {
    
    case Dot, Magnitude, Unit
    
    static func dot(x: [OperationsCalls], _ y: [OperationsCalls]) -> OperationsCalls {
        return .Dot
    }
    
    static func magnitude(x: [OperationsCalls]) -> OperationsCalls {
        return .Magnitude
    }
    
    static func unit(x: [OperationsCalls]) -> [OperationsCalls] {
        return [.Unit]
    }
    
}

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
