//
//  MatrixOperators.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import Jolt

public func +<T: MatrixOperations>(lhs: Matrix<T>, rhs: Matrix<T>) throws -> Matrix<T> {
    return try T.add(lhs, rhs)
}

public func *<T: MatrixOperations>(lhs: T, rhs: Matrix<T>) -> Matrix<T> {
    return T.mul(lhs, rhs)
}

public func *<T: MatrixOperations>(lhs: Matrix<T>, rhs: Matrix<T>) throws -> Matrix<T> {
    return try T.mul(lhs, rhs)
}

postfix operator ′ {}
public postfix func ′<T: MatrixOperations>(value: Matrix<T>) -> Matrix<T> {
    return T.transpose(value)
}
