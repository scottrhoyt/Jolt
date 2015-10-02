//
//  PowerTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest

class DoublePowerTests: XCTestCase, DoubleOperandTest {
    
    typealias OperandType = Double

    func test_pow() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.pow, mapped: OperandType.pow, lowerBound: 0, upperBound: 10, accuracy: 1e-4)
    }
    
    func test_pow2() {
        let val = OperandType.rand(0, upperBound: 10)
        measureAndValidateMappedFunctionWithAccuracy({ Darwin.pow($0, val) }, mapped: { OperandType.pow($0, val) }, lowerBound: 0, upperBound: 10, accuracy: 1e-4)
    }
    
    func test_sqrt() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.sqrt, mapped: OperandType.sqrt)
    }

}

class FloatPowerTests: XCTestCase, DoubleOperandTest {
    
    typealias OperandType = Float
    
    func test_pow() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.pow, mapped: OperandType.pow, lowerBound: 0, upperBound: 6, accuracy: 0.1)
    }
    
    func test_pow2() {
        let val = OperandType.rand(0, upperBound: 6)
        measureAndValidateMappedFunctionWithAccuracy({ Darwin.pow($0, val) }, mapped: { OperandType.pow($0, val) }, lowerBound: 0, upperBound: 6, accuracy: 0.1)
    }
    
    func test_sqrt() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.sqrt, mapped: OperandType.sqrt)
    }
    
}
