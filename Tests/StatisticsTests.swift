//
//  StatisticsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import SurgeOperators

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
    
    func test_stddev() {
        let reduction = {
            (data: [OperandType]) -> OperandType in
            let mean = OperandType.mean(data)
            let reduction = data.reduce(OperandType(0), combine: { $0 + Foundation.pow($1 - mean, 2) })
            return Foundation.sqrt(reduction / OperandType(data.count))
        }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.stdev)
    }
    
    func test_normalize() {
        let data = OperandType.normalize(rands(SurgeTestCountMedium))
        let mean = OperandType.mean(data)
        let stdev = OperandType.stdev(data)
        XCTAssertEqualWithAccuracy(mean, 0, accuracy: OperandType.accuracy)
        XCTAssertEqualWithAccuracy(stdev, 1.0, accuracy: OperandType.accuracy)
    }
    
    func test_variance() {
        let scaleFactor: OperandType = 2
        let data = OperandType.normalize(rands(SurgeTestCountMedium)) * scaleFactor
        let variance = OperandType.variance(data)
        XCTAssertEqualWithAccuracy(variance, pow(scaleFactor, 2), accuracy: OperandType.accuracy)
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
    
    func test_stddev() {
        let reduction = {
            (data: [OperandType]) -> OperandType in
            let mean = OperandType.mean(data)
            let reduction = data.reduce(OperandType(0), combine: { $0 + Foundation.pow($1 - mean, 2) })
            return Foundation.sqrt(reduction / OperandType(data.count))
        }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.stdev)
    }
    
    func test_normalize() {
        let data = OperandType.normalize(rands(SurgeTestCountMedium))
        let mean = OperandType.mean(data)
        let stdev = OperandType.stdev(data)
        XCTAssertEqualWithAccuracy(mean, 0, accuracy: OperandType.accuracy)
        XCTAssertEqualWithAccuracy(stdev, 1.0, accuracy: OperandType.accuracy)
    }
    
    func test_variance() {
        let scaleFactor: OperandType = 2
        let data = OperandType.normalize(rands(SurgeTestCountMedium)) * scaleFactor
        let variance = OperandType.variance(data)
        XCTAssertEqualWithAccuracy(variance, pow(scaleFactor, 2), accuracy: OperandType.accuracy)
    }
    
}