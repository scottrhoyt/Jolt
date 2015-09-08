//
//  FloatingTypeStatisticsExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

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
    
}
