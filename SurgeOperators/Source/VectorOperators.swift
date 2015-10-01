//
//  VectorOperators.swift
//  Surge
//
//  Created by Scott Hoyt on 9/26/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//


import Surge

// TODO: Separate Operator for member-wise?

public func +<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.add(lhs, rhs)
}

public func +<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    return T.add(lhs, rhs)
}

public func +<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    return T.add(lhs, rhs)
}

public func -<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.sub(lhs, rhs)
}

public func -<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    return T.sub(lhs, rhs)
}

public func -<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    return T.sub(lhs, rhs)
}

public func *<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.mul(lhs, rhs)
}

public func *<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    return T.mul(lhs, rhs)
}

public func *<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    return T.mul(lhs, rhs)
}

public func /<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.div(lhs, rhs)
}

public func /<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    return T.div(lhs, rhs)
}

public func /<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    return T.div(lhs, rhs)
}

public func %<T: VectorArithmetic>(lhs: [T], rhs: [T]) -> [T] {
    return T.mod(lhs, rhs)
}

public func %<T: VectorArithmetic>(lhs: [T], rhs: T) -> [T] {
    return T.mod(lhs, rhs)
}

public func %<T: VectorArithmetic>(lhs: T, rhs: [T]) -> [T] {
    return T.mod(lhs, rhs)
}

// FIXME: Is there a better operator for dot?
infix operator • {}
public func •<T: VectorOperations>(lhs: [T], rhs: [T]) -> T {
    return T.dot(lhs, rhs)
}