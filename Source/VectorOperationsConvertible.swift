//
//  File.swift
//  Surge
//
//  Created by Scott Hoyt on 9/22/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public typealias VectorAll = protocol<VectorPower, VectorArithmetic>

public protocol VectorOperationsConvertible : VectorAll {
    typealias FloatConversionType : VectorAll, FloatingPointType
    
    var floatingPointValue: FloatConversionType { get }
    init(floatingPointValue: FloatConversionType)
}

extension Array where Element : VectorOperationsConvertible {
    
    func toValueArray() -> [Element.FloatConversionType] {
        return self.map( { return $0.floatingPointValue } )
    }
    
    static func fromValueArray(x: [Element.FloatConversionType]) -> [Element] {
        return x.map({ return Element(floatingPointValue: $0) })
    }
    
}

extension VectorOperationsConvertible {
    
    // MARK: Power
    public static func pow(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.pow(x.toValueArray(), y.toValueArray()))
    }
    
    public static func sqrt(x: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.sqrt(x.toValueArray()))
    }
    
    // MARK: Arithmetic
    public static func add(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.add(x.toValueArray(), y.toValueArray()))
    }
    public static func sub(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.sub(x.toValueArray(), y.toValueArray()))
    }
    public static func mul(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.mul(x.toValueArray(), y.toValueArray()))
    }
    public static func div(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.div(x.toValueArray(), y.toValueArray()))
    }
    public static func add(x: [Self], _ y: Self) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.add(x.toValueArray(), y.floatingPointValue))
    }
    public static func sub(x: [Self], _ y: Self) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.sub(x.toValueArray(), y.floatingPointValue))
    }
    public static func mul(x: [Self], _ y: Self) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.mul(x.toValueArray(), y.floatingPointValue))
    }
    public static func div(x: [Self], _ y: Self) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.div(x.toValueArray(), y.floatingPointValue))
    }
    public static func add(x: Self, _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.add(x.floatingPointValue, y.toValueArray()))
    }
    public static func sub(x: Self, _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.sub(x.floatingPointValue, y.toValueArray()))
    }
    public static func mul(x: Self, _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.mul(x.floatingPointValue, y.toValueArray()))
    }
    public static func div(x: Self, _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.div(x.floatingPointValue, y.toValueArray()))
    }
    public static func mod(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.mod(x.toValueArray(), y.toValueArray()))
    }
    public static func remainder(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.remainder(x.toValueArray(), y.toValueArray()))
    }
    
    // MARK: Overload if not FloatLiteralConvertible, Optional Otherwise
    public static func zero() -> Self
    {
        return Self(floatingPointValue: FloatConversionType(0))
    }
    public static func one() -> Self {
        return Self(floatingPointValue: FloatConversionType(1))
    }
    public static func negativeOne() -> Self {
        return Self(floatingPointValue: FloatConversionType(-1))
    }
    
}