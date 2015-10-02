//
//  MatrixTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/25/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
@testable import Surge

protocol MatrixTest : RandomDataTest {
    typealias OperandType : FloatLiteralConvertible, FloatingPointAccuracy
}

extension MatrixTest {

    func checkIfThrows(op: () throws -> (), error: MatrixError) {
        var didThrow = false
        do {
            try op()
        }
        catch let e {
            if let caughtError = e as? MatrixError {
                if caughtError == error {
                    didThrow = true
                }
            }
        }
        XCTAssertTrue(didThrow)
    }
    
    func checkIfIdentity(mat: Matrix<OperandType>) {
        for var n = 0; n < mat.columns; n++ {
            for var m = 0; m < mat.columns; m++ {
                XCTAssertEqualWithAccuracy(m == n ? OperandType(1) : OperandType(0), mat[m,n], accuracy: OperandType.accuracy)
            }
        }
    }
    
    func randMatrix(rows: Int, _ columns: Int, lowerBound: OperandType? = nil, upperBound: OperandType? = nil) -> Matrix<OperandType> {
        var matArray = Array<Array<OperandType>>()
        for var m = 0; m < rows; m++ {
            matArray.append(rands(columns, lowerBound: lowerBound, upperBound: upperBound))
        }
        return try! Matrix(matArray)
    }
    
    func zeroMatrix(rows: Int, _ columns: Int) -> Matrix<OperandType> {
        var matArray = Array<Array<OperandType>>()
        for var m = 0; m < rows; m++ {
            matArray.append(Array<OperandType>(count: columns, repeatedValue: OperandType(0)))
        }
        return try! Matrix(matArray)
    }
}

class DoubleMatrixTests: XCTestCase, MatrixTest {
    
    typealias OperandType = Double
    
    var a: Array<OperandType> = [1.0, 2.0, 3.0]
    var b: Array<OperandType> = [1.0, 2.0, 3.0]

    func test_matrix_init_fails_with_bad_input_dimensions() {
        b = [1.0, 2.0]
        checkIfThrows({ try _ = Matrix([self.a,self.b]) }, error: MatrixError.InvalidMatrixDimensions)
    }
    
    func test_matrix_init_with_contents() {
        let c = [a,b]
        let mat = try! Matrix(c)
        for var n = 0; n < mat.columns; n++ {
            for var m = 0; m < mat.rows; m++ {
                XCTAssertEqual(c[m][n], mat[m,n])
            }
        }
        
    }
    
    func test_subscript_set() {
        let baseValue = 0.0
        let testValue = 1.0
        let testIndex = 1
        var mat = Matrix(rows: 3, columns: 3, repeatedValue: baseValue)
        mat[testIndex,testIndex] = testValue
        for var n = 0; n < mat.columns; n++ {
            for var m = 0; m < mat.rows; m++ {
                XCTAssertEqual((m == testIndex ) && (n == testIndex) ? testValue : baseValue, mat[m,n])
            }
        }
    }
    
    func test_description() {
        let mat = (try! Matrix([a,b]))′
        let expected = "⎛\t1.0\t1.0\t⎞\n⎜\t2.0\t2.0\t⎥\n⎝\t3.0\t3.0\t⎠\n"
        XCTAssertEqual(expected, mat.description)
    }
    
    func test_add_invalid_dimensions_throws() {
        checkIfThrows({ try zeroMatrix(2, 2) + zeroMatrix(3, 3) }, error: MatrixError.InvalidMatrixDimensions)
    }
    
    func test_mul_invalid_dimensions_throws() {
        checkIfThrows({ try zeroMatrix(2, 2) * zeroMatrix(3, 3) }, error: MatrixError.InvalidMatrixDimensions)
    }
    
    func test_inverse_not_square_throws() {
        checkIfThrows({ try OperandType.inv(zeroMatrix(2, 3)) }, error: MatrixError.MatrixNotSquare)
    }
    
    func test_inverse_not_invertible_throws() {
        checkIfThrows({ try OperandType.inv(zeroMatrix(2, 2)) }, error: MatrixError.MatrixNotInvertible)
    }
    
    func test_inverse_identity() {
        let a = randMatrix(3, 3)
        let aInv = try! OperandType.inv(a)
        let result = try! a * aInv
        checkIfIdentity(result)
    }
    
    func test_scale() {
        let mat = randMatrix(3, 3)
        let alpha = OperandType.rand(-1e6, upperBound: 1e6)
        let expected = mat.grid.map({ $0 * alpha })
        let actual = (alpha * mat).grid
        validateWithAccuracy(expected, actual: actual, accuracy: OperandType.accuracy)
    }
    
}

class FloatMatrixTests: XCTestCase, MatrixTest {
    
    typealias OperandType = Float
    
    var a: Array<OperandType> = [1.0, 2.0, 3.0]
    var b: Array<OperandType> = [1.0, 2.0, 3.0]
    
    func test_matrix_init_fails_with_bad_input_dimensions() {
        b = [1.0, 2.0]
        checkIfThrows({ try _ = Matrix([self.a,self.b]) }, error: MatrixError.InvalidMatrixDimensions)
    }
    
    func test_matrix_init_with_contents() {
        let c = [a,b]
        let mat = try! Matrix(c)
        for var n = 0; n < mat.columns; n++ {
            for var m = 0; m < mat.rows; m++ {
                XCTAssertEqual(c[m][n], mat[m,n])
            }
        }
        
    }
    
    func test_subscript_set() {
        let baseValue = 0.0
        let testValue = 1.0
        let testIndex = 1
        var mat = Matrix(rows: 3, columns: 3, repeatedValue: baseValue)
        mat[testIndex,testIndex] = testValue
        for var n = 0; n < mat.columns; n++ {
            for var m = 0; m < mat.rows; m++ {
                XCTAssertEqual((m == testIndex ) && (n == testIndex) ? testValue : baseValue, mat[m,n])
            }
        }
    }
    
    func test_description() {
        let mat = (try! Matrix([a,b]))′
        let expected = "⎛\t1.0\t1.0\t⎞\n⎜\t2.0\t2.0\t⎥\n⎝\t3.0\t3.0\t⎠\n"
        XCTAssertEqual(expected, mat.description)
    }
    
    func test_add_invalid_dimensions_throws() {
        checkIfThrows({ try zeroMatrix(2, 2) + zeroMatrix(3, 3) }, error: MatrixError.InvalidMatrixDimensions)
    }
    
    func test_mul_invalid_dimensions_throws() {
        checkIfThrows({ try zeroMatrix(2, 2) * zeroMatrix(3, 3) }, error: MatrixError.InvalidMatrixDimensions)
    }
    
    func test_inverse_not_square_throws() {
        checkIfThrows({ try OperandType.inv(zeroMatrix(2, 3)) }, error: MatrixError.MatrixNotSquare)
    }
    
    func test_inverse_not_invertible_throws() {
        checkIfThrows({ try OperandType.inv(zeroMatrix(2, 2)) }, error: MatrixError.MatrixNotInvertible)
    }
    
    func test_inverse_identity() {
        let a = randMatrix(3, 3)
        let aInv = try! OperandType.inv(a)
        let result = try! a * aInv
        checkIfIdentity(result)
    }
    
    func test_scale() {
        let mat = randMatrix(3, 3)
        let alpha = OperandType.rand(-1e6, upperBound: 1e6)
        let expected = mat.grid.map({ $0 * alpha })
        let actual = (alpha * mat).grid
        validateWithAccuracy(expected, actual: actual, accuracy: OperandType.accuracy)
    }
    
}
