//
//  ArrayExponentialExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

extension Array where Element : VectorExponential {
    
    public func exp() -> [Element] {
        return Element.exp(self)
    }
    
    // TODO: Implement rest of array functions
    
}
