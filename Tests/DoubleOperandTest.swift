//
//  DoubleOperandTest.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import XCTest

protocol DoubleOperandTest : SingleOperandTest {
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType, OperandType) -> (OperandType), mapped: ([OperandType], [OperandType]) -> ([OperandType]), lowerBound: OperandType?, upperBound: OperandType?, accuracy: OperandType)

}

extension DoubleOperandTest where Self : XCTestCase {
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType, OperandType) -> (OperandType), mapped: (([OperandType], [OperandType]) -> ([OperandType])), lowerBound: OperandType? = nil, upperBound: OperandType? = nil, accuracy: OperandType = OperandType.accuracy)
    {
        let values1 = rands(SurgeTestCountMedium, lowerBound: lowerBound, upperBound: upperBound)
        let values2 = rands(SurgeTestCountMedium, lowerBound: lowerBound, upperBound: upperBound)
        
        measureAndValidateMappedFunctionWithAccuracy(values1, source2: values2, member: member, mapped: mapped, accuracy: accuracy)
    }

}