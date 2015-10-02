//
//  VectorTrigonometric.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



public protocol VectorTrigonometric {
    
    // MARK: To Overload
    static func sin(x: [Self]) -> [Self]
    static func cos(x: [Self]) -> [Self]
    static func tan(x: [Self]) -> [Self]
    static func asin(x: [Self]) -> [Self]
    static func acos(x: [Self]) -> [Self]
    static func atan(x: [Self]) -> [Self]
    static func rad2deg(x: [Self]) -> [Self]
    static func deg2rad(x: [Self]) -> [Self]
    
    // MARK: OptionalOverload
    static func sincos(x: [Self]) -> (sin: [Self], cos: [Self])
}

// TODO: Implement default sincos