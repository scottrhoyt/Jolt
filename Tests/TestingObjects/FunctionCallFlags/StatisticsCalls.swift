//
//  StatisticsCalls.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import Jolt

enum StatisticsCalls : VectorStatistics {
    
    case Sum, Mean, Min, Max, Normalize, Variance, Stdev, Covariance, Correlation, None
    
    static func sum(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Sum
    }
    
    static func mean(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Mean
    }
    
    static func min(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Min
    }
    
    static func max(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Max
    }
    
    static func normalize(x: [StatisticsCalls]) -> [StatisticsCalls] {
        return [.Normalize]
    }
    
    static func variance(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Variance
    }
    
    static func stdev(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Stdev
    }
    
    static func covariance(x: [StatisticsCalls], _ y: [StatisticsCalls]) -> StatisticsCalls {
        return .Covariance
    }
    
    static func correlation(x: [StatisticsCalls], _ y: [StatisticsCalls]) -> StatisticsCalls {
        return .Correlation
    }
    
}