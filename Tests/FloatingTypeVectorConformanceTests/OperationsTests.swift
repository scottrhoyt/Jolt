//
//  OperationsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/25/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge
import SurgeOperators

class DoubleOperationsTests: XCTestCase, ReductionTest {

    typealias OperandType = Double
    
    func test_magnitude() {
        let reduction = { (data: [OperandType]) in return sqrt(data.reduce(OperandType(0), combine: { $0 + pow($1,2) })) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.magnitude)
    }
    
    func test_unit() {
        let vector = rands(SurgeTestCountMedium)
        let magnitude = OperandType.magnitude(vector)
        let unit = OperandType.unit(vector)
        validateWithAccuracy(vector, actual: unit * magnitude, accuracy: OperandType.accuracy)
    }
    
    func test_dot() {
        let vector1 = rands(SurgeTestCountMedium)
        let vector2 = rands(SurgeTestCountMedium)
        let expected = zip(vector1, vector2).reduce(OperandType(0), combine: { $0 + $1.0 * $1.1 })
        let actual = OperandType.dot(vector1, vector2)
        XCTAssertEqualWithAccuracy(expected, actual, accuracy: OperandType.accuracy)
    }
    
    func test_Operator() {
        let vector1 = rands(SurgeTestCountMedium)
        let vector2 = rands(SurgeTestCountMedium)
        let expected = OperandType.dot(vector1, vector2)
        let actual = vector1 • vector2
        XCTAssertEqualWithAccuracy(expected, actual, accuracy: OperandType.accuracy)
    }

}

class FloatOperationsTests: XCTestCase, ReductionTest {
    
    typealias OperandType = Float
    
    func test_magnitude() {
        let reduction = { (data: [OperandType]) in return sqrt(data.reduce(OperandType(0), combine: { $0 + pow($1,2) })) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.magnitude)
    }
    
    func test_unit() {
        let vector = rands(SurgeTestCountMedium)
        let magnitude = OperandType.magnitude(vector)
        let unit = OperandType.unit(vector)
        validateWithAccuracy(vector, actual: unit * magnitude, accuracy: OperandType.accuracy)
    }
    
    func test_dot() {
        let vector1 = rands(SurgeTestCountMedium)
        let vector2 = rands(SurgeTestCountMedium)
        let expected = zip(vector1, vector2).reduce(OperandType(0), combine: { $0 + $1.0 * $1.1 })
        let actual = OperandType.dot(vector1, vector2)
        XCTAssertEqualWithAccuracy(expected, actual, accuracy: 0.001)
    }
    
    func test_Operator() {
        let vector1 = rands(SurgeTestCountMedium)
        let vector2 = rands(SurgeTestCountMedium)
        let expected = OperandType.dot(vector1, vector2)
        let actual = vector1 • vector2
        XCTAssertEqualWithAccuracy(expected, actual, accuracy: OperandType.accuracy)
    }
    
}
