// AuxiliaryTests.swift
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

class DoubleAuxiliaryTests: XCTestCase , SingleOperandTest {
    
    typealias OperandType = Double
    
    func test_copysign() {
        let signs = [OperandType]((0..<SurgeTestCountMedium).map {$0 % 2 == 0 ? 1.0 : -1.0})

        var magnitudes = [OperandType]()
        for _ in (0..<SurgeTestCountMedium).enumerate() {
            magnitudes.append(OperandType(arc4random_uniform(10)))
        }

        var expected: [OperandType] = []
        for (sign, magnitude) in Zip2Sequence(signs, magnitudes) {
            expected.append(sign * abs(magnitude))
        }

        var actual: [OperandType] = []
        self.measureBlock {
            actual = OperandType.copysign(signs, magnitudes)
        }

        XCTAssertEqual(actual, expected)
    }
    
    func test_abs() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.fabs, mapped: OperandType.abs, lowerBound: -1e6, upperBound: 1e6)
    }
    
    func test_ceil() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.ceil, mapped: OperandType.ceil, lowerBound: -1e6, upperBound: 1e6)
    }
    
    func test_floor() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.floor, mapped: OperandType.floor, lowerBound: -1e6, upperBound: 1e6)
    }
    
    func test_round() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.round, mapped: OperandType.round, lowerBound: -1e6, upperBound: 1e6)
    }
    
    func test_neg() {
        measureAndValidateMappedFunctionWithAccuracy({ -1 * $0 }, mapped: OperandType.neg, lowerBound: -1e6, upperBound: 1e6)
    }
    
    func test_rec() {
        measureAndValidateMappedFunctionWithAccuracy({ 1 / $0 }, mapped: OperandType.rec, lowerBound: -1e6, upperBound: 1e6)
    }
    
    func test_trunc() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.trunc, mapped: OperandType.trunc, lowerBound: -1e6, upperBound: 1e6)
    }
}

class FloatAuxiliaryTests: XCTestCase , SingleOperandTest {
    
    typealias OperandType = Float
    
    func test_copysign() {
        let signs = [OperandType]((0..<SurgeTestCountMedium).map {$0 % 2 == 0 ? 1.0 : -1.0})
        
        var magnitudes = [OperandType]()
        for _ in (0..<SurgeTestCountMedium).enumerate() {
            magnitudes.append(OperandType(arc4random_uniform(10)))
        }
        
        var expected: [OperandType] = []
        for (sign, magnitude) in Zip2Sequence(signs, magnitudes) {
            expected.append(sign * abs(magnitude))
        }
        
        var actual: [OperandType] = []
        self.measureBlock {
            actual = OperandType.copysign(signs, magnitudes)
        }
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_abs() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.fabs, mapped: OperandType.abs, lowerBound: -1e3, upperBound: 1e3)
    }
    
    func test_ceil() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.ceil, mapped: OperandType.ceil, lowerBound: -1e3, upperBound: 1e3)
    }
    
    func test_floor() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.floor, mapped: OperandType.floor, lowerBound: -1e3, upperBound: 1e3)
    }
    
    func test_round() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.round, mapped: OperandType.round, lowerBound: -1e2, upperBound: 1e2)
    }
    
    func test_neg() {
        measureAndValidateMappedFunctionWithAccuracy({ -1 * $0 }, mapped: OperandType.neg, lowerBound: -1e3, upperBound: 1e3)
    }
    
    func test_rec() {
        measureAndValidateMappedFunctionWithAccuracy({ 1 / $0 }, mapped: OperandType.rec, lowerBound: -1e3, upperBound: 1e3)
    }
    
    func test_trunc() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.trunc, mapped: OperandType.trunc, lowerBound: -1e3, upperBound: 1e3)
    }
}
