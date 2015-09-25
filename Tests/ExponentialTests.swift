// ExponentialTests.swift
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

import Foundation
import Surge
import XCTest

class ExponentialTests: XCTestCase, SOTC {
    
    typealias OperandType = Double
    
    func test_exp() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.exp, mapped: OperandType.exp, lowerBound: -10, upperBound: 10)
    }

    func test_exp2() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.exp2, mapped: OperandType.exp2, lowerBound: -10, upperBound: 10)
    }
    
    func test_log() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.log, mapped: OperandType.log, lowerBound: 1e-10, upperBound: 1e10)
    }
    
    func test_log2() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.log2, mapped: OperandType.log2, lowerBound: 1e-10, upperBound: 1e10)
    }
    
    func test_log10() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.log10, mapped: OperandType.log10, lowerBound: 1e-10, upperBound: 1e10)
    }
    
    func test_logb() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.logb, mapped: OperandType.logb, lowerBound: 1e-10, upperBound: 1e10)
    }
    
}

class ExponentialTests2: XCTestCase, SOTC {
    
    typealias OperandType = Float
    
    func test_exp() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.exp, mapped: OperandType.exp, lowerBound: -10, upperBound: 10)
    }
    
    func test_exp2() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.exp2, mapped: OperandType.exp2, lowerBound: -10, upperBound: 10)
    }
    
    func test_log() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.log, mapped: OperandType.log, lowerBound: 1e-10, upperBound: 1e10)
    }
    
    func test_log2() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.log2, mapped: OperandType.log2, lowerBound: 1e-10, upperBound: 1e10)
    }
    
    func test_log10() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.log10, mapped: OperandType.log10, lowerBound: 1e-10, upperBound: 1e10)
    }
    
    func test_logb() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.logb, mapped: OperandType.logb, lowerBound: 1e-10, upperBound: 1e10)
    }
    
}
