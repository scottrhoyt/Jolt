//
//  File.swift
//  Surge
//
//  Created by Scott Hoyt on 9/22/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public typealias VectorAll = protocol<VectorPower, VectorArithmetic>

public protocol DoubleConvertible : VectorAll {
    func doubleValue() -> Double
    init(value: Double)
}

extension Array where Element : DoubleConvertible {
    
    func toDoubleArray() -> [Double] {
        return self.map( { return $0.doubleValue() } )
    }
    
    static func fromDoubleArray(x: [Double]) -> [Element] {
        return x.map({ return Element(value: $0) })
    }
    
}

extension DoubleConvertible {
    
    // MARK: Power
    public static func power(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromDoubleArray(Double.power(x.toDoubleArray(), y.toDoubleArray()))
    }
    
    public static func sqrt(x: [Self]) -> [Self] {
        return [Self].fromDoubleArray(Double.sqrt(x.toDoubleArray()))
    }
    
    // MARK: Arithmetic
    public static func add(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromDoubleArray(Double.add(x.toDoubleArray(), y.toDoubleArray()))
    }
    public static func mul(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromDoubleArray(Double.mul(x.toDoubleArray(), y.toDoubleArray()))
    }
    // TODO: Perhaps should be optional Overload?
    public static func div(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromDoubleArray(Double.div(x.toDoubleArray(), y.toDoubleArray()))
    }
    public static func mod(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromDoubleArray(Double.mod(x.toDoubleArray(), y.toDoubleArray()))
    }
    public static func remainder(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromDoubleArray(Double.remainder(x.toDoubleArray(), y.toDoubleArray()))
    }
    
    // MARK: Overload if not FloatLiteralConvertible, Optional Otherwise
    public static func zero() -> Self
    {
        return Self(value: 0)
    }
    public static func one() -> Self {
        return Self(value: 1)
    }
    public static func negativeOne() -> Self {
        return Self(value: -1)
    }
    
}