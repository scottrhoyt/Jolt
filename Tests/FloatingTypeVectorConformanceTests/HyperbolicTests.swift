// HyperbolicTests.swift
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
import Jolt
import XCTest

class DoubleHyperbolicTests: XCTestCase, SingleOperandTest {

    typealias OperandType = Double
    
    func test_sinh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.sinh, mapped: OperandType.sinh, lowerBound: -10, upperBound: 10)
    }

    func test_cosh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.cosh, mapped: OperandType.cosh, lowerBound: -10, upperBound: 10)
    }

    func test_tanh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.tanh, mapped: OperandType.tanh, lowerBound: -10, upperBound: 10)
    }

    func test_asinh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.asinh, mapped: OperandType.asinh, lowerBound: -10, upperBound: 10)
    }

    func test_acosh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.acosh, mapped: OperandType.acosh, lowerBound: 1, upperBound: 10)
    }

    func test_atanh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.atanh, mapped: OperandType.atanh, lowerBound: -1, upperBound: 1)
    }
}

class FloatHyperbolicTests: XCTestCase, SingleOperandTest {
    
    typealias OperandType = Float
    
    func test_sinh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.sinh, mapped: OperandType.sinh, lowerBound: -5, upperBound: 5)
    }
    
    func test_cosh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.cosh, mapped: OperandType.cosh, lowerBound: -5, upperBound: 5)
    }
    
    func test_tanh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.tanh, mapped: OperandType.tanh, lowerBound: -5, upperBound: 5)
    }
    
    func test_asinh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.asinh, mapped: OperandType.asinh, lowerBound: -10, upperBound: 10)
    }
    
    func test_acosh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.acosh, mapped: OperandType.acosh, lowerBound: 1, upperBound: 10)
    }
    
    func test_atanh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.atanh, mapped: OperandType.atanh, lowerBound: -1, upperBound: 1)
    }
}