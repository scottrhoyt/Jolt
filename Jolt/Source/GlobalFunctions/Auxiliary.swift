// Auxilliary.swift
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

public func abs<T: VectorAuxiliary>(x: [T]) -> [T] {
    return T.abs(x)
}

public func ceil<T: VectorAuxiliary>(x: [T]) -> [T] {
    return T.ceil(x)
}

public func clip<T: VectorAuxiliary>(x: [T], _ low: T, _ high: T) -> [T] {
    return T.clip(x, low, high)
}

public func copysign<T: VectorAuxiliary>(sign: [T], _ magnitude: [T]) -> [T] {
    return T.copysign(sign, magnitude)
}

public func floor<T: VectorAuxiliary>(x: [T]) -> [T] {
    return T.floor(x)
}

public func neg<T: VectorAuxiliary>(x: [T]) -> [T] {
    return T.neg(x)
}

public func rec<T: VectorAuxiliary>(x: [T]) -> [T] {
    return T.rec(x)
}

public func round<T: VectorAuxiliary>(x: [T]) -> [T] {
    return T.round(x)
}

public func threshold<T: VectorAuxiliary>(x: [T], _ low: T) -> [T] {
    return T.threshold(x, low)
}

public func trunc<T: VectorAuxiliary>(x: [T]) -> [T] {
    return T.trunc(x)
}
