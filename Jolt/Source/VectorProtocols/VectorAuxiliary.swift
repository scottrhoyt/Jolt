//
//  VectorAuxiliary.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



public protocol VectorAuxiliary {
    
    // MARK: To Overload
    static func abs(x: [Self]) -> [Self]
    static func ceil(x: [Self]) -> [Self]
    static func clip(x: [Self], _ low: Self, _ high: Self) -> [Self]
    static func copysign(x: [Self], _ magnitude: [Self]) -> [Self]
    static func floor(x: [Self]) -> [Self]
    static func neg(x: [Self]) -> [Self]
    static func rec(x: [Self]) -> [Self]
    static func round(x: [Self]) -> [Self]
    static func threshold(x: [Self], _ low: Self) -> [Self]
    static func trunc(x: [Self]) -> [Self]
    
}