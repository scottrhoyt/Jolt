//
//  VectorOperations.swift
//  Surge
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//



public protocol VectorOperations {
    
    // MARK: To Overload
    static func magnitude(x: [Self]) -> Self
    static func unit(x: [Self]) -> [Self]
    static func dot(x: [Self], _ y: [Self]) -> Self

}

// TODO: Provide default implementation for unit?