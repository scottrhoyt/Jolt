//
//  VectorOther.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/22/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



// TODO: Put these in a better protocol

public protocol VectorOther {
    
    // MARK: From Arithmetic
    static func asum(x: [Self]) -> Self
    static func meamg(x: [Self]) -> Self
    static func measq(x: [Self]) -> Self
    
}