//
//  VectorArithmetic.swift
//  Surge
//
//  Created by Scott Hoyt on 9/6/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorArithmetic {
    static func add(x: [Self], _ y: [Self]) -> [Self]
    static func multiply(x: [Self], _ y: [Self]) -> [Self]
    init<T: FloatLiteralConvertible>(value: T)
}

extension Double : VectorArithmetic {
    public init<T: FloatLiteralConvertible>(value: T) {
        self = Double(value: value)
    }
    
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
//extension Float : FloatingArithmetic {}

//public protocol VectorArithmetic {
//    func +(rhs: VectorArithmetic, lhs: VectorArithmetic) -> VectorArithmetic
//}
//
//public extension Array where Element : FloatingArithmetic {
//    //func +(rhs: Vector)
//}
//
//public extension Double {
//    
//}

func +<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.add(lhs, rhs)
}

func *<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.multiply(lhs, rhs)
}

func *<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.multiply(lhs, rhsVect)
}

public extension VectorArithmetic {
    public static func subtract(x: [Self], _ y: [Self]) -> [Self] {
        return x + (y * Self(value: -1))
    }
}