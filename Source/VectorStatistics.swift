//
//  VectorStatistics.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorStatistics {
    
    // MARK: To Overload
    static func sum(x: [Self]) -> Self
    static func min(x: [Self]) -> Self
    static func max(x: [Self]) -> Self
    static func mean(x: [Self]) -> Self
    static func normalize(x: [Self]) -> [Self]
//    static func stdev(x: [Self]) -> Self
//    static func variance(x: [Self]) -> Self
    static func stdevp(x: [Self]) -> Self
//    static func variancep(x: [Self]) -> Self
//    static func covariance(x: [Self], _ y: [Self]) -> Self
//    static func covariancep(x: [Self], _ y: [Self]) -> Self
//    static func correlation(x: [Self], _ y: [Self]) -> Self
    // MARK: Optional Overload if conforming to Vector
    
}

// TODO: Add default implementations for min, max, mean, sum? (with Double)
