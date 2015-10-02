//
//  ArrayPowerExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



extension Array where Element : VectorPower {
    
    public func pow(y: [Element]) -> [Element] {
        return Element.pow(self, y)
    }
    
    public func pow(y: Element) -> [Element] {
        return Element.pow(self, y)
    }
    
    public func sqrt() -> [Element] {
        return Element.sqrt(self)
    }
    
}