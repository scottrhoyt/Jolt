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
import Surge
import XCTest

class HyperbolicTests: SingleOperandTestCase<Double> {

    func test_sinh() {
        values = rands(SurgeTestCountMedium, lowerBound: -10, upperBound: 10)
        measureAndValidateMappedFunctionWithAccuracy(Darwin.sinh, mapped: Double.sinh)
    }

    func test_cosh() {
        values = rands(SurgeTestCountMedium, lowerBound: -10, upperBound: 10)
        measureAndValidateMappedFunctionWithAccuracy(Darwin.cosh, mapped: Double.cosh)
    }

    func test_tanh() {
        values = rands(SurgeTestCountMedium, lowerBound: -10, upperBound: 10)
        measureAndValidateMappedFunctionWithAccuracy(Darwin.tanh, mapped: Double.tanh)
    }

    func test_asinh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.asinh, mapped: Double.asinh)
    }

    func test_acosh() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.acosh, mapped: Double.acosh)
    }

    func test_atanh() {
        values = rands(SurgeTestCountMedium, lowerBound: -1, upperBound: 1)
        measureAndValidateMappedFunctionWithAccuracy(Darwin.atanh, mapped: Double.atanh)
    }
}
