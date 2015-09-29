//
//  VectorArithmetic.swift
//  Surge
//
//  Created by Scott Hoyt on 9/6/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorArithmetic {
    
    // MARK: To Overload
    static func add(x: [Self], _ y: [Self]) -> [Self]
    // TODO: Perhaps should have a default implementation?
    static func sub(x: [Self], _ y: [Self]) -> [Self]
    static func mul(x: [Self], _ y: [Self]) -> [Self]
    // TODO: Perhaps should have a default implementation?
    static func div(x: [Self], _ y: [Self]) -> [Self]
    static func mod(x: [Self], _ y: [Self]) -> [Self]
    static func remainder(x: [Self], _ y: [Self]) -> [Self]
    
    // MARK: Overload if not FloatLiteralConvertible, Optional Otherwise
    static func zero() -> Self
    static func one() -> Self
    static func negativeOne() -> Self
    
    //MARK: Optional Overload
    static func zeros(count: Int) -> [Self]
    static func ones(count: Int) -> [Self]
    static func negativeOnes(count: Int) -> [Self]
}

public extension VectorArithmetic {
    
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