//
//  FloatingTypeStatisticsExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import Accelerate

extension Double : VectorStatistics {
    
    public static func sum(x: [Double]) -> Double {
        var result: Double = 0.0
        vDSP_sveD(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
    public static func max(x: [Double]) -> Double {
        var result: Double = 0.0
        vDSP_maxvD(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
    public static func min(x: [Double]) -> Double {
        var result: Double = 0.0
        vDSP_minvD(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
    public static func mean(x: [Double]) -> Double {
        var result: Double = 0.0
        vDSP_meanvD(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
    public static func stdevp(x: [Double]) -> Double {
        var mean: Double = 0
        var stdev: Double = 0
        
        vDSP_normalizeD(x, 1, nil, 1, &mean, &stdev, vDSP_Length(x.count))
        return stdev
    }
    
    public static func normalize(x: [Double]) -> [Double] {
        var mean: Double = 0
        var stdev: Double = 0
        var results = [Double](x)
        
        vDSP_normalizeD(x, 1, &results, 1, &mean, &stdev, vDSP_Length(x.count))
        return results
    }
    
}

extension Float : VectorStatistics {
    
    public static func sum(x: [Float]) -> Float {
        var result: Float = 0.0
        vDSP_sve(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
    public static func max(x: [Float]) -> Float {
        var result: Float = 0.0
        vDSP_maxv(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
    public static func min(x: [Float]) -> Float {
        var result: Float = 0.0
        vDSP_minv(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
    public static func mean(x: [Float]) -> Float {
        var result: Float = 0.0
        vDSP_meanv(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
    public static func stdevp(x: [Float]) -> Float {
        var mean: Float = 0
        var stdev: Float = 0
        
        vDSP_normalize(x, 1, nil, 1, &mean, &stdev, vDSP_Length(x.count))
        return stdev
    }
    
    public static func normalize(x: [Float]) -> [Float] {
        var mean: Float = 0
        var stdev: Float = 0
        var results = [Float](x)
        
        vDSP_normalize(x, 1, &results, 1, &mean, &stdev, vDSP_Length(x.count))
        return results
    }
    
}
