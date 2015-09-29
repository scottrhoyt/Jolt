//
//  OtherTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/25/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest

class DoubleOtherTests: XCTestCase, ReductionTest {

    typealias OperandType = Double
    
    func test_asum() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + abs($1) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.asum, lowerBound: -1e6, upperBound: 1e5)
    }
    
    func test_measq() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + pow($1, 2) / OperandType(data.count) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.measq, lowerBound: -1e3, upperBound: 1e3)
    }
    
    func test_meamg() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + abs($1) / OperandType(data.count) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.meamg, lowerBound: -1e6, upperBound: 1e6)
    }

}

class FloatOtherTests: XCTestCase, ReductionTest {
    
    typealias OperandType = Float
    
    func test_asum() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + abs($1) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.asum, lowerBound: -1e3, upperBound: 1e3, accuracy: 0.5)
    }
    
    func test_measq() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + pow($1, 2) / OperandType(data.count) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.measq, lowerBound: -1e2, upperBound: 1e2, accuracy: 0.1)
    }
    
    func test_meamg() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + abs($1) / OperandType(data.count) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.meamg, lowerBound: -1e3, upperBound: 1e3, accuracy: 0.1)
    }
    
}
