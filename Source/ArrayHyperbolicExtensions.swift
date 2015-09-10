//
//  ArrayHyperbolicExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

extension Array where Element : VectorHyperbolic {
    
    public func sinh() -> [Element] {
        return Element.sinh(self)
    }
    
    // TODO: Implement Rest of functions
}