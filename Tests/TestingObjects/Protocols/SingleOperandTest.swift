//
//  SingleOperandTest.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//


import XCTest


protocol SingleOperandTest : RandomDataTest {
    
    typealias OperandType : FloatingPointAccuracy
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: ([OperandType]) -> ([OperandType]), lowerBound: OperandType?, upperBound: OperandType?, accuracy: OperandType)
    
}

extension SingleOperandTest where Self : XCTestCase {
    
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: (([OperandType]) -> ([OperandType])), lowerBound: OperandType? = nil, upperBound: OperandType? = nil, accuracy: OperandType = OperandType.accuracy) {
        
        let values = rands(JoltTestCountMedium, lowerBound: lowerBound, upperBound: upperBound)
        
        measureAndValidateMappedFunctionWithAccuracy(values, member: member, mapped: mapped, accuracy: accuracy)
    }
    
}