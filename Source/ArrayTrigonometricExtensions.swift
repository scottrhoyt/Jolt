//
//  ArrayTrigonometricExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

extension Array where Element : VectorTrigonometric {
    
    public func sin() -> [Element] {
        return Element.sin(self)
    }
    
    // TODO: Implement rest of array functions
}
