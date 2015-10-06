// Trigonometric.swift
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

public func sincos<T: VectorTrigonometric>(x: [T]) -> (sin: [T], cos: [T]) {
    return T.sincos(x)
}

public func sin<T: VectorTrigonometric>(x: [T]) -> [T] {
    return T.sin(x)
}

public func cos<T: VectorTrigonometric>(x: [T]) -> [T] {
    return T.cos(x)
}

public func tan<T: VectorTrigonometric>(x: [T]) -> [T] {
    return T.tan(x)
}

public func asin<T: VectorTrigonometric>(x: [T]) -> [T] {
    return T.asin(x)
}

public func acos<T: VectorTrigonometric>(x: [T]) -> [T] {
    return T.acos(x)
}

public func atan<T: VectorTrigonometric>(x: [T]) -> [T] {
    return T.atan(x)
}

public func rad2deg<T: VectorTrigonometric>(x: [T]) -> [T] {
    return T.rad2deg(x)
}

public func deg2rad<T: VectorTrigonometric>(x: [T]) -> [T] {
    return T.deg2rad(x)
}
