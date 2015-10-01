//
//  ArrayTest.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//


import XCTest

protocol ArrayTest : RandomDataTest {
    typealias OperandType : FloatingPointAccuracy

    func measureAndValidateMappedFunctionWithAccuracy(arrayOp: ([OperandType], [OperandType]) -> ([OperandType]), mappedArrayOp: ([OperandType]) -> ([OperandType]), lowerBound: OperandType?, upperBound: OperandType?, accuracy: OperandType)
}