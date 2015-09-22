//
//  ArrayOtherExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/22/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

extension Array where Element : VectorOther {
    
    // TODO: Implement the rest
    public func asum() -> Element {
        return Element.asum(self)
    }
}