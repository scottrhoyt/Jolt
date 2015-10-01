//
//  VectorPower.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//



public protocol VectorPower {
    
    // MARK: To Overload
    static func pow(x: [Self], _ y: [Self]) -> [Self]
    
    // MARK: Overload if not FloatLiteralConvertible, Optional Otherwise
    static func sqrt(x: [Self]) -> [Self]
    
    // MARK: Optional Overload
    static func pow(x: [Self], _ y: Self) -> [Self]
}

public extension VectorPower {
    
    public static func pow(x: [Self], _ y: Self) -> [Self] {
        return Self.pow(x, [Self](count: x.count, repeatedValue: y))
    }
    
}

// TODO: Declare pow operator
// TODO: Rename pow to pow
// TODO: Add square convenience method?