//
//  ArrayOperationsExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



extension Array where Element : VectorOperations {
    
    public func unit() -> [Element] {
        return Element.unit(self)
    }
    
    public func magnitude() -> Element {
        return Element.magnitude(self)
    }
    
    public func dot(y: [Element]) -> Element {
        return Element.dot(self, y)
    }

}