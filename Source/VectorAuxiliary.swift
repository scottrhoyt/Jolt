//
//  VectorAuxiliary.swift
//  Surge
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorAuxiliary {
    
    static func absolute(x: [Self]) -> Self
    static func ceiling(x: [Self]) -> Self
    static func clip(x: [Self], low: Self, high: Self) -> Self
    static func copysign(x: [Self], magnitude: Self) -> Self
    static func floor(x: [Self]) -> Self
    static func neg(x: [Self]) -> Self
    static func reciprocal(x: [Self]) -> Self
    static func round(x: [Self]) -> Self
    static func threshold(x: [Self], low: Self) -> Self
    static func truncate(x: [Self]) -> Self
    
}