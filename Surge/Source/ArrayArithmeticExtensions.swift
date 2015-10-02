//
//  ArrayArithmeticExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

extension Array where Element : VectorArithmetic {
    
    public func add(y: [Element]) -> [Element] {
        return Element.add(self, y)
    }
    
    public func sub(y: [Element]) -> [Element] {
        return Element.sub(self, y)
    }
    
    public func mul(y: [Element]) -> [Element] {
        return Element.mul(self, y)
    }

    public func div(y: [Element]) -> [Element] {
        return Element.div(self, y)
    }
    
    public func add(y: Element) -> [Element] {
        return Element.add(self, y)
    }
    
    public func sub(y: Element) -> [Element] {
        return Element.sub(self, y)
    }
    
    public func mul(y: Element) -> [Element] {
        return Element.mul(self, y)
    }
    
    public func div(y: Element) -> [Element] {
        return Element.div(self, y)
    }
    
    public func mod(y: [Element]) -> [Element] {
        return Element.mod(self, y)
    }
    
    public func remainder(y: [Element]) -> [Element] {
        return Element.remainder(self, y)
    }
    
    public func mod(y: Element) -> [Element] {
        return Element.mod(self, y)
    }

    public func remainder(y: Element) -> [Element] {
        return Element.remainder(self, y)
    }
    
}