//
//  ArrayOperationsExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

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