//
//  ArrayPowerExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

// TODO: Add Rest of power functions

extension Array where Element : VectorPower {
    
    public func pow(y: [Element]) -> [Element] {
        return Element.pow(self, y)
    }
    
    public func pow(y: Element) -> [Element] {
        return Element.pow(self, y)
    }
}