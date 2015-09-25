//
//  StatisticsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest

class DoubleStatisticsTests: XCTestCase, ReductionTest {

    typealias OperandType = Double
    
    func test_sum() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + $1 }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.sum)
    }
    
    func test_min() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType.infinity, combine: { min($0, $1) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.min)
    }
    
    func test_max() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(-1e32), combine: { max($0, $1) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.max)
    }
    
    func test_mean() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + $1 / OperandType(data.count) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.mean)
    }

}

class FloatStatisticsTests: XCTestCase, ReductionTest {
    
    typealias OperandType = Float
    
    func test_sum() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + $1 }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.sum, accuracy: 0.001)
    }
    
    func test_min() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType.infinity, combine: { min($0, $1) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.min)
    }
    
    func test_max() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(-1e32), combine: { max($0, $1) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.max)
    }
    
    func test_mean() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + $1 / OperandType(data.count) }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.mean)
    }
    
}