//
//  RandomDataTest.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

protocol RandomDataTest {
    
    typealias OperandType : GenRandom
    
    func rands(count: Int) -> [OperandType]
    func rands(count: Int, lowerBound: OperandType, upperBound: OperandType) -> [OperandType]
    
}

extension RandomDataTest {
    
    func rands(count: Int) -> [OperandType] {
        return (0..<count).map {_ in OperandType.rand() }
    }
    
    func rands(count: Int, lowerBound: OperandType, upperBound: OperandType) -> [OperandType] {
        return (0..<count).map {_ in OperandType.rand(lowerBound, upperBound: upperBound) }
    }
    
}