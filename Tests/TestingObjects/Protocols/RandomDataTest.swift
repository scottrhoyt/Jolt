//
//  RandomDataTest.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



protocol RandomDataTest {
    
    typealias OperandType : GenRandom
    
    func rands(count: Int, lowerBound: OperandType?, upperBound: OperandType?) -> [OperandType]
    
}

extension RandomDataTest {
    
    func rands(count: Int, lowerBound: OperandType? = nil, upperBound: OperandType? = nil) -> [OperandType] {
        return (0..<count).map {_ in OperandType.rand(lowerBound, upperBound: upperBound) }
    }
    
}