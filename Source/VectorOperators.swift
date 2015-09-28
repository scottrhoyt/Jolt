//
//  VectorOperators.swift
//  Surge
//
//  Created by Scott Hoyt on 9/26/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import Surge

// TODO: Separate Operator for member-wise?

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
    return T.sub(lhs, rhs)
}

public func -<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.sub(lhs, rhsVect)
}

public func -<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.sub(lhsVect, rhs)
}

public func *<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.mul(lhs, rhs)
}

public func *<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.mul(lhs, rhsVect)
}

public func *<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.mul(lhsVect, rhs)
}

public func /<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.div(lhs, rhs)
}

public func /<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    let rhsVect = Array<T>(count: lhs.count, repeatedValue: rhs)
    return T.div(lhs, rhsVect)
}

public func /<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    let lhsVect = Array<T>(count: rhs.count, repeatedValue: lhs)
    return T.div(lhsVect, rhs)
}

public func %<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.mod(lhs, rhs)
}

public func %<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    return T.mod(lhs, [T](count: lhs.count, repeatedValue: rhs))
}

public func %<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    return T.mod([T](count: rhs.count, repeatedValue: lhs), rhs)
}