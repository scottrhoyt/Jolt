//
//  VectorOperations.swift
//  Surge
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorOperations {
    
    static func magnitude(x: [Self]) -> Self
    static func unit(x: [Self]) -> [Self]
    static func dot(x: [Self], _ y: [Self]) -> Self

}

// FIXME: Is there a better operator for dot?
infix operator • {}
public func •<T: VectorOperations>(lhs: [T], rhs: [T]) -> T {
    return T.dot(lhs, rhs)
}

// TODO: Provide default implementation for unit?