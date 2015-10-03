// ArithmeticTests.swift
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


import Jolt
import XCTest
import JoltOperators

class DoubleArithmeticTests: XCTestCase, DoubleOperandTest {
    
    typealias OperandType = Double
    
    func test_add() {
        measureAndValidateMappedFunctionWithAccuracy({$0 + $1 }, mapped: OperandType.add)
    }
    func test_subtract() {
        measureAndValidateMappedFunctionWithAccuracy({$0 - $1 }, mapped: OperandType.sub)
    }
    func test_multiply() {
        measureAndValidateMappedFunctionWithAccuracy({$0 * $1 }, mapped: OperandType.mul)
    }
    func test_divide() {
        measureAndValidateMappedFunctionWithAccuracy({$0 / $1}, mapped: OperandType.div)
    }
    func test_mod() {
        measureAndValidateMappedFunctionWithAccuracy({$0 % $1 }, mapped: OperandType.mod)
    }
    func test_remainder() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.remainder, mapped: OperandType.remainder)
    }
    func test_remainder2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({ Darwin.remainder($0, val) }, mapped: { OperandType.remainder($0, val) })
    }
    func test_remainder3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({ Darwin.remainder(val, $0) }, mapped: { OperandType.remainder(val, $0) })
    }
    func test_addOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 + $1 }, mapped: +)
    }
    func test_subtractOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 - $1 }, mapped: -)
    }
    func test_multiplyOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 * $1 }, mapped: *)
    }
    func test_divideOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 / $1}, mapped: /)
    }
    func test_modOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 % $1 }, mapped: %)
    }
    func test_addOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 + val }, mapped: {$0 + val })
    }
    func test_subtractOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 - val }, mapped: {$0 - val })
    }
    func test_multiplyOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 * val }, mapped: {$0 * val })
    }
    func test_divideOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 / val }, mapped: {$0 / val })
    }
    func test_modOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 % val }, mapped: {$0 % val })
    }
    func test_addOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({val + $0 }, mapped: { val + $0 })
    }
    func test_subtractOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({val - $0 }, mapped: { val - $0 })
    }
    func test_multiplyOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({val * $0}, mapped: { val * $0 })
    }
    func test_divideOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({ val / $0 }, mapped: { val / $0 })
    }
    func test_modOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({ val % $0 }, mapped: { val % $0 })
    }
}

class FloatArithmeticTests: XCTestCase, DoubleOperandTest {
    
    typealias OperandType = Float
    
    func test_add() {
        measureAndValidateMappedFunctionWithAccuracy({$0 + $1 }, mapped: OperandType.add)
    }
    func test_subtract() {
        measureAndValidateMappedFunctionWithAccuracy({$0 - $1 }, mapped: OperandType.sub)
    }
    func test_multiply() {
        measureAndValidateMappedFunctionWithAccuracy({$0 * $1 }, mapped: OperandType.mul)
    }
    func test_divide() {
        measureAndValidateMappedFunctionWithAccuracy({$0 / $1}, mapped: OperandType.div)
    }
    func test_mod() {
        measureAndValidateMappedFunctionWithAccuracy({$0 % $1 }, mapped: OperandType.mod)
    }
    func test_remainder() {
        measureAndValidateMappedFunctionWithAccuracy(Darwin.remainder, mapped: OperandType.remainder)
    }
    func test_addOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 + $1 }, mapped: +)
    }
    func test_subtractOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 - $1 }, mapped: -)
    }
    func test_multiplyOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 * $1 }, mapped: *)
    }
    func test_divideOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 / $1}, mapped: /)
    }
    func test_modOperator() {
        measureAndValidateMappedFunctionWithAccuracy({$0 % $1 }, mapped: %)
    }
    func test_addOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 + val }, mapped: {$0 + val })
    }
    func test_subtractOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 - val }, mapped: {$0 - val })
    }
    func test_multiplyOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 * val }, mapped: {$0 * val })
    }
    func test_divideOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 / val }, mapped: {$0 / val })
    }
    func test_modOperator2() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({$0 % val }, mapped: {$0 % val })
    }
    func test_addOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({val + $0 }, mapped: { val + $0 })
    }
    func test_subtractOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({val - $0 }, mapped: { val - $0 })
    }
    func test_multiplyOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({val * $0}, mapped: { val * $0 })
    }
    func test_divideOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({ val / $0 }, mapped: { val / $0 }, accuracy: 0.001)
    }
    func test_modOperator3() {
        let val = OperandType.rand()
        measureAndValidateMappedFunctionWithAccuracy({ val % $0 }, mapped: { val % $0 })
    }
}
