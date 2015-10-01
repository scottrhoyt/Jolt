//
//  VectorHyperbolic.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//



public protocol VectorHyperbolic {
    
    // MARK: - To Overload
    static func sinh(x: [Self]) -> [Self]
    static func cosh(x: [Self]) -> [Self]
    static func tanh(x: [Self]) -> [Self]
    static func asinh(x: [Self]) -> [Self]
    static func acosh(x: [Self]) -> [Self]
    static func atanh(x: [Self]) -> [Self]
    
}
