//
//  VectorArithmetic.swift
//  Surge
//
//  Created by Scott Hoyt on 9/6/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorArithmetic {
    
    // MARK: To Overload
    static func add(x: [Self], _ y: [Self]) -> [Self]
    static func multiply(x: [Self], _ y: [Self]) -> [Self]
    
    // MARK: Overload if not FloatLiteralConvertible, Optional Otherwise
    static func zero() -> Self
    static func one() -> Self
    static func negativeOne() -> Self
    
    //MARK: Optional Overload
    static func zeros(count: Int) -> [Self]
    static func ones(count: Int) -> [Self]
    static func negativeOnes(count: Int) -> [Self]
    static func subtract(x: [Self], _ y: [Self]) -> [Self]
    static func divide(x: [Self], _ y: [Self]) -> [Self]
    
}

public extension VectorArithmetic {
    
    public static func zeros(count: Int) -> [Self] {
        return [Self](count: count, repeatedValue: Self.zero())
    }
    
    public static func ones(count: Int) -> [Self] {
        return [Self](count: count, repeatedValue: Self.one())
    }
    
    public static func negativeOnes(count: Int) -> [Self] {
        return [Self](count: count, repeatedValue: Self.negativeOne())
    }
    
    public static func subtract(x: [Self], _ y: [Self]) -> [Self] {
        return x + (y * Self.negativeOnes(y.count))
    }
    
    // TODO: Get rid of commented out default implementation
//
//    public static func divide(x: [Self], _ y: [Self]) -> [Self] {
//        return x * (Self.ones(y.count) / y)
//    }
    
}

public func +<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.add(lhs, rhs)
}

public func +<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.add(lhs, rhsVect)
}

public func +<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.add(lhsVect, rhs)
}

public func -<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.subtract(lhs, rhs)
}

public func -<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.subtract(lhs, rhsVect)
}

public func -<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.subtract(lhsVect, rhs)
}

public func *<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.multiply(lhs, rhs)
}

public func *<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.multiply(lhs, rhsVect)
}

public func *<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.multiply(lhsVect, rhs)
}

public func /<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.divide(lhs, rhs)
}

public func /<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.divide(lhs, rhsVect)
}

public func /<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.divide(lhsVect, rhs)
}