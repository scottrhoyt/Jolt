//
//  ArrayAuxiliaryExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

extension Array where Element : VectorAuxiliary {
    public func abs() -> [Element] {
        return Element.abs(self)
    }
}

// TODO: Extend rest of functions