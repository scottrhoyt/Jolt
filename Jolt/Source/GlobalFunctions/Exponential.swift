// Exponential.swift
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

public func exp<T: VectorExponential>(x: [T]) -> [T] {
    return T.exp(x)
}

public func exp2<T: VectorExponential>(x: [T]) -> [T] {
    return T.exp2(x)
}

public func log<T: VectorExponential>(x: [T]) -> [T] {
    return T.log(x)
}

public func log2<T: VectorExponential>(x: [T]) -> [T] {
    return T.log2(x)
}

public func log10<T: VectorExponential>(x: [T]) -> [T] {
    return T.log10(x)
}

public func logb<T: VectorExponential>(x: [T]) -> [T] {
    return T.logb(x)
}
