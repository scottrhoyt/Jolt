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
    
    func measureAndValidateMappedFunctionWithAccuracy(reduction: ([OperandType]) -> (OperandType), mapped: ([OperandType]) -> (OperandType))
    
}

extension ReductionTest where Self : XCTestCase {
    
    func measureAndValidateMappedFunctionWithAccuracy(reduction: ([OperandType]) -> (OperandType), mapped: ([OperandType]) -> (OperandType)) {
        let values = rands(SurgeTestCountMedium)
        measureAndValidateMappedFunctionWithAccuracy(values, reduction: reduction, mapped: mapped, accuracy: OperandType.accuracy)
    }
    
}