//
//  SingleOperandTestCase.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest

protocol FloatingPointAccuracy : FloatingPointType {
    static var accuracy: Self { get }
}

protocol GenRandom {
    static func rand() -> Self
    static func rand(lowerBound: Self, upperBound: Self) -> Self
}

extension Double : FloatingPointAccuracy, GenRandom {
    
    static var accuracy: Double {
        return 0.000001
    }
    
    static func rand() -> Double {
        return Double(arc4random())
    }
    
    static func rand(lowerBound: Double, upperBound: Double) -> Double {
        let r = Double(arc4random()) / Double(UInt64.max)
        return (r * (upperBound - lowerBound)) + lowerBound
    }
}

extension Float : FloatingPointAccuracy, GenRandom {
    
    static var accuracy: Float {
        return 0.0001
    }
    
    static func rand() -> Float {
        return Float(arc4random())
    }
    
    static func rand(lowerBound: Float, upperBound: Float) -> Float {
        let r = Float(arc4random()) / Float(UInt64.max)
        return (r * (upperBound - lowerBound)) + lowerBound
    }
}

protocol SOTC {
    
    typealias OperandType : FloatingPointAccuracy, GenRandom
    
    func rands(count: Int) -> [OperandType]
    func rands(count: Int, lowerBound: OperandType, upperBound: OperandType) -> [OperandType]
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: ([OperandType]) -> ([OperandType]))
    func measureAndValidateMappedFunctionWithAccuracy(member: (OperandType) -> (OperandType), mapped: ([OperandType]) -> ([OperandType]), lowerBound: OperandType, upperBound: OperandType)
    
}

extension SOTC where Self : XCTestCase {
    
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

class SingleOperandTestCase<T: protocol<FloatingPointAccuracy, GenRandom>>: XCTestCase {
    
    var values: [T]?
    
    override func setUp() {
        super.setUp()
        values = rands(SurgeTestCountMedium)
    }
    
    func rands(count: Int) -> [T] {
        return (0..<count).map {_ in T.rand() }
    }
    
    func rands(count: Int, lowerBound: T, upperBound: T) -> [T] {
        return (0..<count).map {_ in T.rand(lowerBound, upperBound: upperBound) }
    }
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (T) -> (T), mapped: ([T]) -> ([T])) {
        measureAndValidateMappedFunctionWithAccuracy(values!, member: member, mapped: mapped, accuracy: T.accuracy)
    }

}

class DoubleOperatorTestCase<T: protocol<FloatingPointAccuracy, GenRandom>> : SingleOperandTestCase<T> {
    
    var values2: [T]?
    
    override func setUp() {
        super.setUp()
        values2 = rands(SurgeTestCountMedium)
    }
    
    func measureAndValidateMappedFunctionWithAccuracy(member: (T, T) -> (T), mapped: ([T], [T]) -> ([T])) {
        measureAndValidateMappedFunctionWithAccuracy(values!, source2: values2!, member: member, mapped: mapped, accuracy: T.accuracy)
    }
}