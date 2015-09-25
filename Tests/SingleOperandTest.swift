//
//  SingleOperandTest.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import XCTest


protocol SingleOperandTestCase {
    
    typealias OperandType : FloatingPointAccuracy, GenRandom
    
    func rands(count: Int) -> [OperandType]
    func rands(count: Int, lowerBound: OperandType, upperBound: OperandType) -> [OperandType]
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: ([OperandType]) -> ([OperandType]))
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: ([OperandType]) -> ([OperandType]), lowerBound: OperandType, upperBound: OperandType)
    
}

extension SingleOperandTestCase where Self : XCTestCase {
    
    func rands(count: Int) -> [OperandType] {
        return (0..<count).map {_ in OperandType.rand() }
    }
    
    func rands(count: Int, lowerBound: OperandType, upperBound: OperandType) -> [OperandType] {
        return (0..<count).map {_ in OperandType.rand(lowerBound, upperBound: upperBound) }
    }
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: ([OperandType]) -> ([OperandType])) {
        let values = rands(SurgeTestCountMedium)
        measureAndValidateMappedFunctionWithAccuracy(values, member: member, mapped: mapped, accuracy: OperandType.accuracy)
    }
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: ([OperandType]) -> ([OperandType]), lowerBound: OperandType, upperBound: OperandType) {
        let values = rands(SurgeTestCountMedium, lowerBound: lowerBound, upperBound: upperBound)
        measureAndValidateMappedFunctionWithAccuracy(values, member: member, mapped: mapped, accuracy: OperandType.accuracy)
    }
    
}