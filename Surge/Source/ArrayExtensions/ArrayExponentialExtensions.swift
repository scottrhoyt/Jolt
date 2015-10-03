//
//  ArrayExponentialExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



extension Array where Element : VectorExponential {
    
    public func exp() -> [Element] {
        return Element.exp(self)
    }
    
    public func exp2() -> [Element] {
        return Element.exp2(self)
    }

    public func log() -> [Element] {
        return Element.log(self)
    }

    public func log2() -> [Element] {
        return Element.log2(self)
    }
    
    public func log10() -> [Element] {
        return Element.log10(self)
    }

    public func logb() -> [Element] {
        return Element.logb(self)
    }
}
