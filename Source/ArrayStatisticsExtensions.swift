//
//  ArrayStatisticsExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

extension Array where Element : VectorStatistics {
    
    public func sum() -> Element {
        return Element.sum(self)
    }
    
}

// TODO: Add rest of array functions
