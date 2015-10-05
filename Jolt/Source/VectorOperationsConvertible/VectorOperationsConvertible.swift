//
//  File.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/22/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



public typealias VectorAll = protocol<VectorPower, VectorArithmetic, VectorStatistics>

public protocol VectorOperationsConvertible : VectorAll {
    typealias FloatConversionType : VectorAll, FloatingPointType
    
    var floatingPointValue: FloatConversionType { get }
    init(floatingPointValue: FloatConversionType)
}

extension Array where Element : VectorOperationsConvertible {
    
    public func toValueArray() -> [Element.FloatConversionType] {
        return self.map( { return $0.floatingPointValue } )
    }
    
    public static func fromValueArray(x: [Element.FloatConversionType]) -> [Element] {
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
    
    // MARK: - Statistics
    public static func sum(x: [Self]) -> Self {
        return Self(floatingPointValue: FloatConversionType.sum(x.toValueArray()))
    }
    public static func min(x: [Self]) -> Self {
        return Self(floatingPointValue: FloatConversionType.min(x.toValueArray()))
    }
    public static func max(x: [Self]) -> Self {
        return Self(floatingPointValue: FloatConversionType.max(x.toValueArray()))
    }
    public static func mean(x: [Self]) -> Self {
        return Self(floatingPointValue: FloatConversionType.mean(x.toValueArray()))
    }
    public static func normalize(x: [Self]) -> [Self] {
        return [Self].fromValueArray(FloatConversionType.normalize(x.toValueArray()))
    }
    public static func variance(x: [Self]) -> Self {
        return Self(floatingPointValue: FloatConversionType.variance(x.toValueArray()))
    }
    public static func stdev(x: [Self]) -> Self {
        return Self(floatingPointValue: FloatConversionType.stdev(x.toValueArray()))
    }
    public static func covariance(x: [Self], _ y: [Self]) -> Self {
        return Self(floatingPointValue: FloatConversionType.covariance(x.toValueArray(), y.toValueArray()))
    }
    public static func correlation(x: [Self], _ y: [Self]) -> Self {
        return Self(floatingPointValue: FloatConversionType.correlation(x.toValueArray(), y.toValueArray()))
    }
    
}