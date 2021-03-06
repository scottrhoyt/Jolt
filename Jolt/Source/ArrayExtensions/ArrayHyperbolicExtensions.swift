//
//  ArrayHyperbolicExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



extension Array where Element : VectorHyperbolic {
    
    public func sinh() -> [Element] {
        return Element.sinh(self)
    }
    
    public func cosh() -> [Element] {
        return Element.cosh(self)
    }

    public func tanh() -> [Element] {
        return Element.tanh(self)
    }

    public func asinh() -> [Element] {
        return Element.asinh(self)
    }

    public func acosh() -> [Element] {
        return Element.acosh(self)
    }

    public func atanh() -> [Element] {
        return Element.atanh(self)
    }

}