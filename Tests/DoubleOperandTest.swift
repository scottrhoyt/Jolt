//
//  DoubleOperandTest.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import XCTest

protocol DoubleOperandTestCase : SingleOperandTestCase {
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType, OperandType) -> (OperandType), mapped: ([OperandType], [OperandType]) -> ([OperandType]))
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType, OperandType) -> (OperandType), mapped: ([OperandType], [OperandType]) -> ([OperandType]), lowerBound: OperandType, upperBound: OperandType)
    
}

extension DoubleOperandTestCase where Self : XCTestCase {
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType, OperandType) -> (OperandType), mapped: ([OperandType], [OperandType]) -> ([OperandType])) {
        let values1 = rands(SurgeTestCountMedium)
        let values2 = rands(SurgeTestCountMedium)
        measureAndValidateMappedFunctionWithAccuracy(values1, source2: values2, member: member, mapped: mapped, accuracy: OperandType.accuracy)
    }
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType, OperandType) -> (OperandType), mapped: ([OperandType], [OperandType]) -> ([OperandType]), lowerBound: OperandType, upperBound: OperandType) {
        let values1 = rands(SurgeTestCountMedium, lowerBound: lowerBound, upperBound: upperBound)
        let values2 = rands(SurgeTestCountMedium, lowerBound: lowerBound, upperBound: upperBound)
        measureAndValidateMappedFunctionWithAccuracy(values1, source2: values2, member: member, mapped: mapped, accuracy: OperandType.accuracy)
    }
}