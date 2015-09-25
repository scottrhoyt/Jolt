//
//  MatrixTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/25/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
@testable import Surge

class MatrixTests: XCTestCase {
    
    typealias OperandType = Double
    
    var a: Array<OperandType> = [1.0, 2.0, 3.0]
    var b: Array<OperandType> = [1.0, 2.0, 3.0]

    func test_matrix_init_fails_with_bad_input_dimensions() {
        b = [1.0, 2.0]

        var didFail = false;
        
        do {
            let _ = try Matrix([a,b])
        }
        catch MatrixError.InvalidMatrixDimensions {
            didFail = true
        }
        catch {
            didFail = false
        }
        
        XCTAssertTrue(didFail)
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

}
