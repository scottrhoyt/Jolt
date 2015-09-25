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

let SurgeTestCountLow = 10
let SurgeTestCountMedium = 1000
let SurgeTestCountHigh = 100000
let SurgeTestDoubleAccuracy = 0.000001

extension XCTestCase {
    
    func measureAndValidateMappedFunctionWithAccuracy<C : CollectionType where C.Generator.Element: FloatingPointType>(source: C, member: (C.Generator.Element) -> (C.Generator.Element), mapped: (C) -> ([C.Generator.Element]), accuracy: C.Generator.Element) {
        let expected = source.map(member)

        var actual: [C.Generator.Element] = []
        self.measureBlock {
            actual = mapped(source)
        }

        validateWithAccuracy(expected, actual: actual, accuracy: accuracy)
    }
    
    func measureAndValidateMappedFunctionWithAccuracy<C : CollectionType where C.Generator.Element: FloatingPointType>(source1: C, source2: C, member: (C.Generator.Element, C.Generator.Element) -> (C.Generator.Element), mapped: (C, C) -> ([C.Generator.Element]), accuracy: C.Generator.Element) {
        let expected = zip(source1, source2).map(member)
        
        var actual: [C.Generator.Element] = []
        self.measureBlock {
            actual = mapped(source1, source2)
        }
        
        validateWithAccuracy(expected, actual: actual, accuracy: accuracy)
    }
    
    func validateWithAccuracy<T: FloatingPointType>(expected: [T], actual: [T], accuracy: T) {
        for (i, _) in actual.enumerate() {
            XCTAssertEqualWithAccuracy(actual[i], expected[i], accuracy: accuracy)
        }
    }
    
}
