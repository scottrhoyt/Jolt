//
//  FloatingTypeOtherExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/22/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//


import Accelerate

extension Double : VectorOther {
    
    public static func asum(x: [Double]) -> Double {
        return cblas_dasum(Int32(x.count), x, 1)
    }
    
    public static func meamg(x: [Double]) -> Double {
        var result: Double = 0.0
        vDSP_meamgvD(x, 1, &result, vDSP_Length(x.count))
    
        return result
    }
    
    public static func measq(x: [Double]) -> Double {
        var result: Double = 0.0
        vDSP_measqvD(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
}

extension Float : VectorOther {
    
    public static func asum(x: [Float]) -> Float {
        return cblas_sasum(Int32(x.count), x, 1)
    }
    
    public static func meamg(x: [Float]) -> Float {
        var result: Float = 0.0
        vDSP_meamgv(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }

    public static func measq(x: [Float]) -> Float {
        var result: Float = 0.0
        vDSP_measqv(x, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
}