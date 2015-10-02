//
//  ArrayTrigonometricExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



extension Array where Element : VectorTrigonometric {
    
    public func sin() -> [Element] {
        return Element.sin(self)
    }
    
    public func cos() -> [Element] {
        return Element.cos(self)
    }

    public func tan() -> [Element] {
        return Element.tan(self)
    }

    public func asin() -> [Element] {
        return Element.asin(self)
    }

    public func acos() -> [Element] {
        return Element.acos(self)
    }

    public func atan() -> [Element] {
        return Element.atan(self)
    }

    public func rad2deg() -> [Element] {
        return Element.rad2deg(self)
    }

    public func deg2rad() -> [Element] {
        return Element.deg2rad(self)
    }
    
    public func sincos() -> (sin: [Element], cos: [Element]) {
        return Element.sincos(self)
    }
    
}
