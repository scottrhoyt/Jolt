//
//  VectorPower.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorPower {
    
    // MARK: To Overload
    static func power(x: [Self], _ y: [Self]) -> [Self]
    
    // MARK: Overload if not FloatLiteralConvertible, Optional Otherwise
    static func sqrt(x: [Self]) -> [Self]
    
    // MARK: Optional Overload
    static func power(x: [Self], _ y: Self) -> [Self]
}

public extension VectorPower {
    
    public static func power(x: [Self], _ y: Self) -> [Self] {
        return Self.power(x, [Self](count: x.count, repeatedValue: y))
    }
    
}

// TODO: Declare power operator