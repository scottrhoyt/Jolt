//
//  SingleOperandTest.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import XCTest


protocol SingleOperandTest : RandomDataTest {
    
    typealias OperandType : FloatingPointAccuracy
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: ([OperandType]) -> ([OperandType]), lowerBound: OperandType?, upperBound: OperandType?, accuracy: OperandType)
    
}

extension SingleOperandTest where Self : XCTestCase {
    
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: (([OperandType]) -> ([OperandType])), lowerBound: OperandType? = nil, upperBound: OperandType? = nil, accuracy: OperandType = OperandType.accuracy) {
        
        let values = rands(SurgeTestCountMedium, lowerBound: lowerBound, upperBound: upperBound)
        
        measureAndValidateMappedFunctionWithAccuracy(values, member: member, mapped: mapped, accuracy: accuracy)
    }
    
}