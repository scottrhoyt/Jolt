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

}

class FloatStatisticsTests: XCTestCase, ReductionTest {
    
    typealias OperandType = Float
    
    func test_sum() {
        let reduction = { (data: [OperandType]) in return data.reduce(OperandType(0), combine: { $0 + $1 }) }
        measureAndValidateMappedFunctionWithAccuracy(reduction, mapped: OperandType.sum)
    }
    
}