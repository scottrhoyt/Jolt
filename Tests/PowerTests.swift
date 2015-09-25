//
//  PowerTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest

class DoublePowerTests: XCTestCase, DoubleOperandTest {
    
    typealias OperandType = Double

    func test_pow() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.pow, mapped: OperandType.pow, lowerBound: 0, upperBound: 10)
    }

}

class FloatPowerTests: XCTestCase, DoubleOperandTest {
    
    typealias OperandType = Float
    
    func test_pow() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.pow, mapped: OperandType.pow, lowerBound: 0, upperBound: 7, accuracy: 0.1)
    }
    
}
