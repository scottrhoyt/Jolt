// XCTestCase+Surge.swift
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
import XCTest

let SurgeTestCountLow = 1000
let SurgeTestCountMedium = 100000
let SurgeTestCountHigh = 10000000
let SurgeTestDoubleAccuracy = 0.000001

extension XCTestCase {
    
//    func rand<T: protocol<FloatingPointType, FloatLiteralConvertible>>() -> T {
//        return T(arc4random())
//    }
//    
//    func rands<T: protocol<FloatingPointType, FloatLiteralConvertible>>(count: Int) -> [T] {
//        return (1...count).map {_ in rand() }
//    }
//    
//    func rands<T: protocol<FloatingPointType, FloatLiteralConvertible, Arithmetic>>(lowerBound: T, upperBound: T) -> T {
//        let r = T(arc4random()) / T(UInt64.max)
//        return (r * (upperBound - lowerBound)) + lowerBound
//    }
//    
//    func randDouble() -> Double {
//        return Double(arc4random())
//    }
//    
//    func randDoubles(count: Int) -> [Double] {
//        return (1...count).map {_ in randDouble() }
//    }
//    
//    func randDouble(lowerBound: Double, upperBound: Double) -> Double {
//        let r = Double(arc4random()) / Double(UInt64.max)
//        return (r * (upperBound - lowerBound)) + lowerBound
//    }
//    
//    func randDoubles(count: Int, lowerBound: Double, upperBound: Double) -> [Double] {
//        return (1...count).map {_ in randDouble(lowerBound, upperBound: upperBound) }
//    }
    
    func measureAndValidateMappedFunctionWithAccuracy<C : CollectionType where C.Generator.Element: FloatingPointType>(source: C, member: (C.Generator.Element) -> (C.Generator.Element), mapped: (C) -> ([C.Generator.Element]), accuracy: C.Generator.Element) {
        var expected = source.map(member)

        var actual: [C.Generator.Element] = []
        self.measureBlock {
            actual = mapped(source)
        }

        for (i, _) in source.enumerate() {
            XCTAssertEqualWithAccuracy(actual[i], expected[i], accuracy: accuracy)
        }
    }
    
    func measureAndValidateMappedFunctionWithAccuracy<C : CollectionType where C.Generator.Element: FloatingPointType>(source1: C, source2: C, member: (C.Generator.Element, C.Generator.Element) -> (C.Generator.Element), mapped: (C, C) -> ([C.Generator.Element]), accuracy: C.Generator.Element) {
        let expected = zip(source1, source2).map(member)
        
        var actual: [C.Generator.Element] = []
        self.measureBlock {
            actual = mapped(source1, source2)
        }
        
        validateWithAccuracy(expected, actual: actual, accuracy: accuracy)
    }
    
    func validateWithAccuracy<C : CollectionType where C.Generator.Element: FloatingPointType>(expected: C, actual: C, accuracy: C.Generator.Element) {
//        for (i, _) in actual.enumerate() {
//            XCTAssertEqualWithAccuracy(actual[i], expected[i], accuracy: accuracy)
//        }
        _ = zip(actual, expected).map { XCTAssertEqualWithAccuracy($0, $1, accuracy: accuracy) }
    }
    
}
