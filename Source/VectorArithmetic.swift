//
//  VectorArithmetic.swift
//  Surge
//
//  Created by Scott Hoyt on 9/6/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorArithmetic : FloatLiteralConvertible {
    
    // MARK: To Overload
    static func add(x: [Self], _ y: [Self]) -> [Self]
    static func multiply(x: [Self], _ y: [Self]) -> [Self]
    
    //MARK: Optional Overload
    static func subtract(x: [Self], _ y: [Self]) -> [Self]
}

public extension VectorArithmetic {
    public static func subtract(x: [Self], _ y: [Self]) -> [Self] {
        return x + (y * -1.0)
    }
}

extension Double : VectorArithmetic {
    
    public static func add(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](y)
        cblas_daxpy(Int32(x.count), 1.0, x, 1, &results, 1)
        
        return results
    }
    public static func multiply(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vDSP_vmulD(x, 1, y, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
}

func +<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.add(lhs, rhs)
}

func +<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.add(lhs, rhsVect)
}

func +<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.add(lhsVect, rhs)
}

func -<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.subtract(lhs, rhs)
}

func -<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.subtract(lhs, rhsVect)
}

func -<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.subtract(lhsVect, rhs)
}

func *<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.multiply(lhs, rhs)
}

func *<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.multiply(lhs, rhsVect)
}

func *<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.multiply(lhsVect, rhs)
}