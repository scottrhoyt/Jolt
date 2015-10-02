//
//  ArrayAuxiliaryExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



extension Array where Element : VectorAuxiliary {
    
    public func abs() -> [Element] {
        return Element.abs(self)
    }
    
    public func ceil() -> [Element] {
        return Element.ceil(self)
    }
    
    public func clip(low: Element, _ high: Element) -> [Element] {
        return Element.clip(self, low, high)
    }
    
    public func copysign(magnitude: [Element]) -> [Element] {
        return Element.copysign(self, magnitude)
    }
    
    public func floor() -> [Element] {
        return Element.floor(self)
    }

    public func neg() -> [Element] {
        return Element.neg(self)
    }

    public func rec() -> [Element] {
        return Element.rec(self)
    }

    public func round() -> [Element] {
        return Element.round(self)
    }

    public func threshold(low: Element) -> [Element] {
        return Element.threshold(self, low)
    }

    public func trunc() -> [Element] {
        return Element.trunc(self)
    }
    
}