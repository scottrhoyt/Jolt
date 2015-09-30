// TrigonometricTests.swift
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

import Darwin
import Surge
import XCTest

class DoubleTrigonometricTests: XCTestCase, SingleOperandTest {
    
    typealias OperandType = Double
    
    func test_sin() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.sin, mapped: OperandType.sin)
    }

    func test_cos() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.cos, mapped: OperandType.cos)
    }

    func test_tan() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.tan, mapped: OperandType.tan)
    }

    func test_asin() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.asin, mapped: OperandType.asin, lowerBound: -0.99999999, upperBound: 0.99999999)
    }

    func test_acos() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.acos, mapped: OperandType.acos, lowerBound: -0.99999999, upperBound: 0.99999999)
    }

    func test_atan() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.atan, mapped: OperandType.atan)
    }
    
    func test_rad2deg() {
        measureAndValidateMappedFunctionWithAccuracy({$0 / OperandType(M_PI) * 180}, mapped: OperandType.rad2deg, lowerBound: OperandType(-2 * M_PI), upperBound: OperandType(2 * M_PI))
    }
    
    func test_deg2rad() {
        measureAndValidateMappedFunctionWithAccuracy( {$0 * OperandType(M_PI) / 180}, mapped: OperandType.deg2rad, lowerBound: OperandType(-2 * M_PI), upperBound: OperandType(2 * M_PI))
    }
    
    func test_sincos() {
        let data = rands(SurgeTestCountMedium)
        let results = OperandType.sincos(data)
        let sins = OperandType.sin(data)
        let coss = OperandType.cos(data)
        validateWithAccuracy(results.sin, actual: sins, accuracy: OperandType.accuracy)
        validateWithAccuracy(results.cos, actual: coss, accuracy: OperandType.accuracy)
    }
    
}

class FloatTrigonometricTests: XCTestCase, SingleOperandTest {
    
    typealias OperandType = Float
    
    func test_sin() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.sin, mapped: OperandType.sin)
    }
    
    func test_cos() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.cos, mapped: OperandType.cos)
    }
    
    func test_tan() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.tan, mapped: OperandType.tan)
    }
    
    func test_asin() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.asin, mapped: OperandType.asin, lowerBound: -0.99999999, upperBound: 0.99999999)
    }
    
    func test_acos() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.acos, mapped: OperandType.acos, lowerBound: -0.99999999, upperBound: 0.99999999)
    }
    
    func test_atan() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.atan, mapped: OperandType.atan)
    }
    
    func test_rad2deg() {
        measureAndValidateMappedFunctionWithAccuracy({$0 / OperandType(M_PI) * 180}, mapped: OperandType.rad2deg, lowerBound: OperandType(-2 * M_PI), upperBound: OperandType(2 * M_PI))
    }
    
    func test_deg2rad() {
        measureAndValidateMappedFunctionWithAccuracy( {$0 * OperandType(M_PI) / 180}, mapped: OperandType.deg2rad, lowerBound: OperandType(-2 * M_PI), upperBound: OperandType(2 * M_PI))
    }
    
    func test_sincos() {
        let data = rands(SurgeTestCountMedium)
        let results = OperandType.sincos(data)
        let sins = OperandType.sin(data)
        let coss = OperandType.cos(data)
        validateWithAccuracy(results.sin, actual: sins, accuracy: OperandType.accuracy)
        validateWithAccuracy(results.cos, actual: coss, accuracy: OperandType.accuracy)
    }
}