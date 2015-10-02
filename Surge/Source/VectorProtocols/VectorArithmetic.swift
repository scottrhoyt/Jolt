//
//  VectorArithmetic.swift
//  Surge
//
//  Created by Scott Hoyt on 9/6/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



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
    
    //MARK: Optional Overload
    static func add(x: Self, _ y: [Self]) -> [Self]
    static func mul(x: Self, _ y: [Self]) -> [Self]
    static func mod(x: [Self], _ y: Self) -> [Self]
    static func remainder(x: [Self], _ y: Self) -> [Self]
    static func mod(x: Self, _ y: [Self]) -> [Self]
    static func remainder(x: Self, _ y: [Self]) -> [Self]
    
}

// MARK: - VectorArithmetic Default Implementations

public extension VectorArithmetic {
    
    static func add(x: Self, _ y: [Self]) -> [Self] {
        return Self.add(y, x)
    }
    
    static func mul(x: Self, _ y: [Self]) -> [Self] {
        return Self.mul(y, x)
    }
    
    static func mod(x: [Self], _ y: Self) -> [Self] {
        return Self.mod(x, [Self](count: x.count, repeatedValue: y))
    }
    
    static func remainder(x: [Self], _ y: Self) -> [Self] {
        return Self.remainder(x, [Self](count: x.count, repeatedValue: y))
    }
    
    static func mod(x: Self, _ y: [Self]) -> [Self] {
        return Self.mod([Self](count: y.count, repeatedValue: x), y)
    }
    
    static func remainder(x: Self, _ y: [Self]) -> [Self] {
        return Self.remainder([Self](count: y.count, repeatedValue: x), y)
    }
    
}