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

class HyperbolicTests: XCTestCase {

    func test_sinh() {
        let values = randDoubles(SurgeTestCountMedium, lowerBound: -10, upperBound: 10)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.sinh, mapped: Double.sinh, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_cosh() {
        let values = randDoubles(SurgeTestCountMedium, lowerBound: -10, upperBound: 10)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.cosh, mapped: Double.cosh, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_tanh() {
        let values = randDoubles(SurgeTestCountMedium, lowerBound: -10, upperBound: 10)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.tanh, mapped: Double.tanh, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_asinh() {
        let values = randDoubles(SurgeTestCountMedium)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.asinh, mapped: Double.asinh, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_acosh() {
        let values = randDoubles(SurgeTestCountMedium)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.acosh, mapped: Double.acosh, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_atanh() {
        let values = randDoubles(SurgeTestCountMedium, lowerBound: -1, upperBound: 1)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.atanh, mapped: Double.atanh, accuracy: SurgeTestDoubleAccuracy)
    }
}
