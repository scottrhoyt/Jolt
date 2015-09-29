//
//  VectorArithmetic.swift
//  Surge
//
//  Created by Scott Hoyt on 9/6/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorArithmetic {
    // FIXME: Should potentially add scalar ops separately to optimize (e.g. [1.0, 2.0] + 2) Can use vdsp or cblas for that
    
    // MARK: To Overload
    static func add(x: [Self], _ y: [Self]) -> [Self]
    static func mul(x: [Self], _ y: [Self]) -> [Self]
    static func mod(x: [Self], _ y: [Self]) -> [Self]
    static func remainder(x: [Self], _ y: [Self]) -> [Self]
    
    // TODO: Should perhaps write default implementations:
    static func sub(x: [Self], _ y: [Self]) -> [Self]
    static func div(x: [Self], _ y: [Self]) -> [Self]
    static func add(x: [Self], _ y: Self) -> [Self]
    static func sub(x: [Self], _ y: Self) -> [Self]
    static func sub(x: Self, _ y: [Self]) -> [Self]
    static func mul(x: [Self], _ y: Self) -> [Self]
    static func div(x: [Self], _ y: Self) -> [Self]
    static func div(x: Self, _ y: [Self]) -> [Self]
    
    // MARK: Overload if not FloatLiteralConvertible, Optional Otherwise
    static func zero() -> Self
    static func one() -> Self
    static func negativeOne() -> Self
    
    //MARK: Optional Overload
    static func add(x: Self, _ y: [Self]) -> [Self]
    static func mul(x: Self, _ y: [Self]) -> [Self]
    static func zeros(count: Int) -> [Self]
    static func ones(count: Int) -> [Self]
    static func negativeOnes(count: Int) -> [Self]
}

public extension VectorArithmetic {
    
    static func add(x: Self, _ y: [Self]) -> [Self] {
        return Self.add(y, x)
    }
    
    static func mul(x: Self, _ y: [Self]) -> [Self] {
        return Self.mul(y, x)
    }
    
    public static func zeros(count: Int) -> [Self] {
        return [Self](count: count, repeatedValue: Self.zero())
    }
    
    public static func ones(count: Int) -> [Self] {
        return [Self](count: count, repeatedValue: Self.one())
    }
    
    public static func negativeOnes(count: Int) -> [Self] {
        return [Self](count: count, repeatedValue: Self.negativeOne())
    }
    
}