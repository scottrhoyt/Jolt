//
//  VectorExponential.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//



public protocol VectorExponential {
    
    // MARK: - To Overload
    static func exp(x: [Self]) -> [Self]
    static func exp2(x: [Self]) -> [Self]
    static func log(x: [Self]) -> [Self]
    static func log2(x: [Self]) -> [Self]
    static func log10(x: [Self]) -> [Self]
    static func logb(x: [Self]) -> [Self]
    
}