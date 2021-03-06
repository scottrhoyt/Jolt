//
//  VectorStatistics.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



public protocol VectorStatistics {
    
    // MARK: To Overload
    static func sum(x: [Self]) -> Self
    static func min(x: [Self]) -> Self
    static func max(x: [Self]) -> Self
    static func mean(x: [Self]) -> Self
    static func normalize(x: [Self]) -> [Self]
    static func variance(x: [Self]) -> Self
    static func stdev(x: [Self]) -> Self
    static func covariance(x: [Self], _ y: [Self]) -> Self
    static func correlation(x: [Self], _ y: [Self]) -> Self
    
    //static func stdevs(x: [Self]) -> Self
    //static func variances(x: [Self]) -> Self
    //static func covariances(x: [Self], _ y: [Self]) -> Self
    
}

// TODO: Add default implementations for min, max, mean, sum? (with Double)
