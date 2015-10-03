// Hyperbolic.swift
//
// Copyright (c) 2014–2015 Mattt Thompson (http://mattt.me)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Accelerate

public enum MatrixError : ErrorType {
    case InvalidMatrixDimensions, MatrixNotInvertible, MatrixNotSquare
}

public struct Matrix<T where T: FloatingPointType, T: FloatLiteralConvertible> {
    
    public typealias Element = T

    let rows: Int
    let columns: Int
    var grid: [Element]

    public init(rows: Int, columns: Int, repeatedValue: Element) {
        self.rows = rows
        self.columns = columns

        self.grid = [Element](count: rows * columns, repeatedValue: repeatedValue)
    }

    public init(_ contents: [[Element]]) throws {
        let m: Int = contents.count
        let n: Int = contents[0].count
        
        for content in contents {
            if content.count != n {
                throw MatrixError.InvalidMatrixDimensions
            }
        }
        
        let repeatedValue: Element = 0.0

        self.init(rows: m, columns: n, repeatedValue: repeatedValue)

        for (i, row) in contents.enumerate() {
            grid.replaceRange(i*n..<i*n+min(m, row.count), with: row)
        }
    }

    public subscript(row: Int, column: Int) -> Element {
        get {
            assert(indexIsValidForRow(row, column: column))
            return grid[(row * columns) + column]
        }

        set {
            assert(indexIsValidForRow(row, column: column))
            grid[(row * columns) + column] = newValue
        }
    }

    private func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
}

// MARK: - CustomStringConvertible

extension Matrix: CustomStringConvertible {
    public var description: String {
        var description = ""

        for i in 0..<rows {
            let contents = (0..<columns).map{"\(self[i, $0])"}.joinWithSeparator("\t")

            switch (i, rows) {
            case (0, 1):
                description += "(\t\(contents)\t)"
            case (0, _):
                description += "⎛\t\(contents)\t⎞"
            case (rows - 1, _):
                description += "⎝\t\(contents)\t⎠"
            default:
                description += "⎜\t\(contents)\t⎥"
            }

            description += "\n"
        }

        return description
    }
}

// MARK: - SequenceType

extension Matrix: SequenceType {
    public func generate() -> AnyGenerator<ArraySlice<Element>> {
        let endIndex = rows * columns
        var nextRowStartIndex = 0

        return anyGenerator {
            if nextRowStartIndex == endIndex {
                return nil
            }

            let currentRowStartIndex = nextRowStartIndex
            nextRowStartIndex += self.columns

            return self.grid[currentRowStartIndex..<nextRowStartIndex]
        }
    }
}

// MARK: - MatrixOperations Protocol

public protocol MatrixOperations : FloatingPointType, FloatLiteralConvertible {
    
    // MARK: Must Overload
    static func add(x: Matrix<Self>, _ y: Matrix<Self>) throws -> Matrix<Self>
    static func mul(x: Matrix<Self>, _ y: Matrix<Self>) throws -> Matrix<Self>
    static func mul(alpha: Self, _ x: Matrix<Self>) -> Matrix<Self>
    static func inv(x: Matrix<Self>) throws -> Matrix<Self>
    static func transpose(x: Matrix<Self>) -> Matrix<Self>
    // TODO: Make Transpose not required.
}

extension MatrixOperations {
    
    // TODO: Write Default implementation of traspose
    
    // MARK: Helper functions
    static func checkAddDimensions(x: Matrix<Self>, _ y: Matrix<Self>) throws {
        if !(x.columns == y.columns && x.rows == y.rows) {
            throw MatrixError.InvalidMatrixDimensions
        }
    }
    
    static func checkMulDimensions(x: Matrix<Self>, _ y: Matrix<Self>) throws {
        if !(x.columns == y.rows) {
            throw MatrixError.InvalidMatrixDimensions
        }
    }
    
    static func checkSquare(x: Matrix<Self>) throws {
        if x.columns != x.rows {
            throw MatrixError.MatrixNotSquare
        }
    }
}

// MARK: - MatrixOperations Protocol conformance for Double and Float

extension Double : MatrixOperations {
    
    public static func add(x: Matrix<Double>, _ y: Matrix<Double>) throws -> Matrix<Double> {
        try checkAddDimensions(x, y)
        
        var results = y
        cblas_daxpy(Int32(x.grid.count), 1.0, x.grid, 1, &(results.grid), 1)
        
        return results
    }
    
    public static func mul(x: Matrix<Double>, _ y: Matrix<Double>) throws -> Matrix<Double> {
        try checkMulDimensions(x, y)
        
        var results = Matrix<Double>(rows: x.rows, columns: y.columns, repeatedValue: 0.0)
        cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, Int32(x.rows), Int32(y.columns), Int32(x.columns), 1.0, x.grid, Int32(x.columns), y.grid, Int32(y.columns), 0.0, &(results.grid), Int32(results.columns))
        
        return results
    }
    
    public static func mul(alpha: Double, _ x: Matrix<Double>) -> Matrix<Double> {
        var results = x
        cblas_dscal(Int32(x.grid.count), alpha, &(results.grid), 1)
        
        return results
    }
    
    public static func inv(x: Matrix<Double>) throws -> Matrix<Double> {
        try checkSquare(x)
        
        var results = x
        
        var ipiv = [__CLPK_integer](count: x.rows * x.rows, repeatedValue: 0)
        var lwork = __CLPK_integer(x.columns * x.columns)
        var work = [CDouble](count: Int(lwork), repeatedValue: 0.0)
        var error: __CLPK_integer = 0
        var nc = __CLPK_integer(x.columns)
        
        dgetrf_(&nc, &nc, &(results.grid), &nc, &ipiv, &error)
        dgetri_(&nc, &(results.grid), &nc, &ipiv, &work, &lwork, &error)
        
        if error != 0 {
            throw MatrixError.MatrixNotInvertible
        }
        
        return results
    }
    
    public static func transpose(x: Matrix<Double>) -> Matrix<Double> {
        var results = Matrix<Double>(rows: x.columns, columns: x.rows, repeatedValue: 0.0)
        vDSP_mtransD(x.grid, 1, &(results.grid), 1, vDSP_Length(results.rows), vDSP_Length(results.columns))
        
        return results
    }
    
}

extension Float : MatrixOperations {
    
    public static func add(x: Matrix<Float>, _ y: Matrix<Float>) throws -> Matrix<Float> {
        try checkAddDimensions(x, y)
        
        var results = y
        cblas_saxpy(Int32(x.grid.count), 1.0, x.grid, 1, &(results.grid), 1)
        
        return results
    }
    
    public static func mul(x: Matrix<Float>, _ y: Matrix<Float>) throws -> Matrix<Float> {
        try checkMulDimensions(x, y)
        
        var results = Matrix<Float>(rows: x.rows, columns: y.columns, repeatedValue: 0.0)
        cblas_sgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, Int32(x.rows), Int32(y.columns), Int32(x.columns), 1.0, x.grid, Int32(x.columns), y.grid, Int32(y.columns), 0.0, &(results.grid), Int32(results.columns))
        
        return results
    }
    
    public static func mul(alpha: Float, _ x: Matrix<Float>) -> Matrix<Float> {
        var results = x
        cblas_sscal(Int32(x.grid.count), alpha, &(results.grid), 1)
        
        return results
    }
    
    public static func inv(x: Matrix<Float>) throws -> Matrix<Float> {
        try checkSquare(x)
        
        var results = x
        
        var ipiv = [__CLPK_integer](count: x.rows * x.rows, repeatedValue: 0)
        var lwork = __CLPK_integer(x.columns * x.columns)
        var work = [CFloat](count: Int(lwork), repeatedValue: 0.0)
        var error: __CLPK_integer = 0
        var nc = __CLPK_integer(x.columns)
        
        sgetrf_(&nc, &nc, &(results.grid), &nc, &ipiv, &error)
        sgetri_(&nc, &(results.grid), &nc, &ipiv, &work, &lwork, &error)
        
        if error != 0 {
            throw MatrixError.MatrixNotInvertible
        }
        
        return results

    }
    
    public static func transpose(x: Matrix<Float>) -> Matrix<Float> {
        var results = Matrix<Float>(rows: x.columns, columns: x.rows, repeatedValue: 0.0)
        vDSP_mtrans(x.grid, 1, &(results.grid), 1, vDSP_Length(results.rows), vDSP_Length(results.columns))
        
        return results
    }
    
}
