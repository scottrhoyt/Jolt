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

class TrigonometricTests: XCTestCase {
    
    func test_sin() {
        let values = randDoubles(SurgeTestCountMedium)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.sin, mapped: Double.sin, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_cos() {
        let values = randDoubles(SurgeTestCountMedium)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.cos, mapped: Double.cos, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_tan() {
        let values = randDoubles(SurgeTestCountMedium)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.tan, mapped: Double.tan, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_asin() {
        let values = randDoubles(SurgeTestCountMedium, lowerBound: -1, upperBound: 1)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.asin, mapped: Double.asin, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_acos() {
        let values = randDoubles(SurgeTestCountMedium, lowerBound: -1, upperBound: 1)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.acos, mapped: Double.acos, accuracy: SurgeTestDoubleAccuracy)
    }

    func test_atan() {
        let values = randDoubles(SurgeTestCountMedium)
        measureAndValidateMappedFunctionWithAccuracy(values, member: Darwin.atan, mapped: Double.atan, accuracy: SurgeTestDoubleAccuracy)
    }
}
