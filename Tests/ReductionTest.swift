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
    
    func measureAndValidateMappedFunctionWithAccuracy(member: ([OperandType]) -> (OperandType), mapped: ([OperandType]) -> (OperandType))
    
}