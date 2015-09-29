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
    
    public static func stdev(x: [Double]) -> Double {
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
    
    public static func variance(x: [Double]) -> Double {
        // FIXME: Is there a better way to calculate variance?
        var mean: Double = 0
        var stdev: Double = 0
        
        vDSP_normalizeD(x, 1, nil, 1, &mean, &stdev, vDSP_Length(x.count))
        return Foundation.pow(stdev, 2)
    }
    
    public static func covariance(x: [Double], _ y: [Double]) -> Double {
        let meanX = mean(x)
        let meanY = mean(y)
        let variationsX = Double.sub(x, meanX)
        let variationsY = Double.sub(y, meanY)
        let varmul = Double.mul(variationsX, variationsY)
        let covariance = mean(varmul)
        return covariance
    }
    
    public static func correlation(x: [Double], _ y: [Double]) -> Double {
        let stdevX = stdev(x)
        let stdevY = stdev(y)
        let covar = covariance(x, y)
        let correlation = covar / (stdevX * stdevY)
        return correlation
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
    
    public static func stdev(x: [Float]) -> Float {
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
    
    public static func variance(x: [Float]) -> Float {
        // FIXME: Is there a better way to calculate variance?
        var mean: Float = 0
        var stdev: Float = 0
        
        vDSP_normalize(x, 1, nil, 1, &mean, &stdev, vDSP_Length(x.count))
        return Foundation.pow(stdev, 2)
    }
    
    public static func covariance(x: [Float], _ y: [Float]) -> Float {
        let meanX = mean(x)
        let meanY = mean(y)
        let variationsX = Float.sub(x, meanX)
        let variationsY = Float.sub(y, meanY)
        let varmul = Float.mul(variationsX, variationsY)
        let covariance = mean(varmul)
        return covariance
    }
    
    public static func correlation(x: [Float], _ y: [Float]) -> Float {
        let stdevX = stdev(x)
        let stdevY = stdev(y)
        let covar = covariance(x, y)
        let correlation = covar / (stdevX * stdevY)
        return correlation
    }
    
}
