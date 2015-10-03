//
//  FloatingTypeAuxiliaryExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//


import Accelerate

extension Double : VectorAuxiliary {
    
    public static func abs(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvfabs(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func ceil(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvceil(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func clip(x: [Double], _ low: Double, _ high: Double) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0), y = low, z = high
        vDSP_vclipD(x, 1, &y, &z, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func copysign(sign: [Double], _ magnitude: [Double]) -> [Double] {
        var results = [Double](count: sign.count, repeatedValue: 0.0)
        vvcopysign(&results, magnitude, sign, [Int32(sign.count)])
        
        return results
    }
    
    public static func floor(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvfloor(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func neg(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vDSP_vnegD(x, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func rec(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvrec(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func round(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvnint(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func threshold(x: [Double], _ low: Double) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0), y = low
        vDSP_vthrD(x, 1, &y, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func trunc(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvint(&results, x, [Int32(x.count)])
        
        return results
    }
    
}

extension Float : VectorAuxiliary {
    
    public static func abs(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvfabsf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func ceil(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvceilf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func clip(x: [Float], _ low: Float, _ high: Float) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0), y = low, z = high
        vDSP_vclip(x, 1, &y, &z, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func copysign(sign: [Float], _ magnitude: [Float]) -> [Float] {
        var results = [Float](count: sign.count, repeatedValue: 0.0)
        vvcopysignf(&results, magnitude, sign, [Int32(sign.count)])
        
        return results
    }
    
    public static func floor(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvfloorf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func neg(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vDSP_vneg(x, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func rec(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvrecf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func round(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvnintf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func threshold(x: [Float], _ low: Float) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0), y = low
        vDSP_vthr(x, 1, &y, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func trunc(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvintf(&results, x, [Int32(x.count)])
        
        return results
    }
}