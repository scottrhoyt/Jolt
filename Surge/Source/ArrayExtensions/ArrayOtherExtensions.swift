//
//  ArrayOtherExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/22/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



extension Array where Element : VectorOther {
    
    public func asum() -> Element {
        return Element.asum(self)
    }
    
    public func meamg() -> Element {
        return Element.meamg(self)
    }

    public func measq() -> Element {
        return Element.measq(self)
    }
    
}