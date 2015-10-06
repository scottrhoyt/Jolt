// AuxiliaryTests.swift
//
// Copyright (c) 2015 Scott Hoyt http://scotthoyt.com
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


import Jolt
import XCTest

class DoubleAuxiliaryTests: XCTestCase , SingleOperandTest {
    
    typealias OperandType = Double
    
    let lowerBound: OperandType = -1e6
    let upperBound: OperandType = 1e6
    
    func test_copysign() {
        let signs = [OperandType]((0..<JoltTestCountMedium).map {$0 % 2 == 0 ? 1.0 : -1.0})

        var magnitudes = [OperandType]()
        for _ in (0..<JoltTestCountMedium).enumerate() {
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
        measureAndValidateMappedFunctionWithAccuracy(Darwin.fabs, mapped: OperandType.abs, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_ceil() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.ceil, mapped: OperandType.ceil, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_floor() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.floor, mapped: OperandType.floor, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_round() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.round, mapped: OperandType.round, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_neg() {
        measureAndValidateMappedFunctionWithAccuracy({ -1 * $0 }, mapped: OperandType.neg, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_rec() {
        measureAndValidateMappedFunctionWithAccuracy({ 1 / $0 }, mapped: OperandType.rec, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_trunc() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.trunc, mapped: OperandType.trunc, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_clip() {
        let low = OperandType.rand(lowerBound, upperBound: -1)
        let high = OperandType.rand(1, upperBound: upperBound)
        measureAndValidateMappedFunctionWithAccuracy( { $0 < low ? low : ($0 > high ? high : $0) } , mapped: { OperandType.clip($0, low, high) }, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_threshold() {
        let low = OperandType.rand(lowerBound, upperBound: -1)
        measureAndValidateMappedFunctionWithAccuracy( { $0 < low ? low : $0 } , mapped: { OperandType.threshold($0, low) }, lowerBound: lowerBound, upperBound: upperBound)
    }
    
}

class FloatAuxiliaryTests: XCTestCase , SingleOperandTest {
    
    typealias OperandType = Float
    
    let lowerBound: OperandType = -1e3
    let upperBound: OperandType = 1e3
    
    func test_copysign() {
        let signs = [OperandType]((0..<JoltTestCountMedium).map {$0 % 2 == 0 ? 1.0 : -1.0})
        
        var magnitudes = [OperandType]()
        for _ in (0..<JoltTestCountMedium).enumerate() {
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
        measureAndValidateMappedFunctionWithAccuracy(Darwin.fabs, mapped: OperandType.abs, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_ceil() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.ceil, mapped: OperandType.ceil, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_floor() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.floor, mapped: OperandType.floor, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_round() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.round, mapped: OperandType.round, lowerBound: -1e2, upperBound: 1e2)
    }
    
    func test_neg() {
        measureAndValidateMappedFunctionWithAccuracy({ -1 * $0 }, mapped: OperandType.neg, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_rec() {
        measureAndValidateMappedFunctionWithAccuracy({ 1 / $0 }, mapped: OperandType.rec, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_trunc() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.trunc, mapped: OperandType.trunc, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_clip() {
        let low = OperandType.rand(lowerBound, upperBound: -1)
        let high = OperandType.rand(1, upperBound: upperBound)
        measureAndValidateMappedFunctionWithAccuracy( { $0 < low ? low : ($0 > high ? high : $0) } , mapped: { OperandType.clip($0, low, high) }, lowerBound: lowerBound, upperBound: upperBound)
    }
    
    func test_threshold() {
        let low = OperandType.rand(lowerBound, upperBound: -1)
        measureAndValidateMappedFunctionWithAccuracy( { $0 < low ? low : $0 } , mapped: { OperandType.threshold($0, low) }, lowerBound: lowerBound, upperBound: upperBound)
    }
}
