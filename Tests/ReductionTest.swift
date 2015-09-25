//
//  ReductionTest.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import XCTest

protocol ReductionTest : RandomDataTest {
    
    typealias OperandType : FloatingPointAccuracy
    
    func measureAndValidateMappedFunctionWithAccuracy(reduction: ([OperandType]) -> (OperandType), mapped: ([OperandType]) -> (OperandType), lowerBound: OperandType?, upperBound: OperandType?, accuracy: OperandType)
    
}

extension ReductionTest where Self : XCTestCase {
    
    func measureAndValidateMappedFunctionWithAccuracy(reduction: ([OperandType]) -> (OperandType), mapped: (([OperandType]) -> (OperandType)), lowerBound: OperandType? = nil, upperBound: OperandType? = nil, accuracy: OperandType = OperandType.accuracy)
    {
        let values = rands(SurgeTestCountMedium, lowerBound: lowerBound, upperBound: upperBound)
        measureAndValidateMappedFunctionWithAccuracy(values, reduction: reduction, mapped: mapped, accuracy: accuracy)

    }
    
}