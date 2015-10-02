//
//  FloatingTypeTrigonometricExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//


import Accelerate

extension Double : VectorTrigonometric {
    
    public static func sincos(x: [Double]) -> (sin: [Double], cos: [Double]) {
        var sin = [Double](count: x.count, repeatedValue: 0.0)
        var cos = [Double](count: x.count, repeatedValue: 0.0)
        vvsincos(&sin, &cos, x, [Int32(x.count)])
        
        return (sin, cos)
    }
    
    public static func sin(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvsin(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func cos(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvcos(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func tan(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvtan(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func asin(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvasin(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func acos(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvacos(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func atan(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvatan(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func rad2deg(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        let divisor = [Double](count: x.count, repeatedValue: M_PI / 180.0)
        vvdiv(&results, x, divisor, [Int32(x.count)])
        
        return results
    }
    
    public static func deg2rad(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        let divisor = [Double](count: x.count, repeatedValue: 180.0 / M_PI)
        vvdiv(&results, x, divisor, [Int32(x.count)])
        
        return results
    }
    
}

extension Float : VectorTrigonometric {
    
    public static func sincos(x: [Float]) -> (sin: [Float], cos: [Float]) {
        var sin = [Float](count: x.count, repeatedValue: 0.0)
        var cos = [Float](count: x.count, repeatedValue: 0.0)
        vvsincosf(&sin, &cos, x, [Int32(x.count)])
        
        return (sin, cos)
    }
    
    public static func sin(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvsinf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func cos(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvcosf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func tan(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvtanf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func asin(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvasinf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func acos(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvacosf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func atan(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvatanf(&results, x, [Int32(x.count)])
        
        return results
    }

    public static func rad2deg(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        let divisor = [Float](count: x.count, repeatedValue: Float(M_PI / 180.0))
        vvdivf(&results, x, divisor, [Int32(x.count)])
        
        return results
    }
    
    public static func deg2rad(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        let divisor = [Float](count: x.count, repeatedValue: Float(180.0 / M_PI))
        vvdivf(&results, x, divisor, [Int32(x.count)])
        
        return results
    }
    
}