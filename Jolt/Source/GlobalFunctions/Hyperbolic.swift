// Hyperbolic.swift
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

public func sinh<T: VectorHyperbolic>(x: [T]) -> [T] {
    return T.sinh(x)
}

public func cosh<T: VectorHyperbolic>(x: [T]) -> [T] {
    return T.cosh(x)
}

public func tanh<T: VectorHyperbolic>(x: [T]) -> [T] {
    return T.tanh(x)
}

public func asinh<T: VectorHyperbolic>(x: [T]) -> [T] {
    return T.asinh(x)
}

public func acosh<T: VectorHyperbolic>(x: [T]) -> [T] {
    return T.acosh(x)
}

public func atanh<T: VectorHyperbolic>(x: [T]) -> [T] {
    return T.atanh(x)
}
