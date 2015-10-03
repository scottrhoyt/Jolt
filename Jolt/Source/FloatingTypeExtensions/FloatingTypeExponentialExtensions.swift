//
//  FloatingTypeExponentialExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//


import Accelerate

extension Double : VectorExponential {
    
    public static func exp(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvexp(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func exp2(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvexp2(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func log(x: [Double]) -> [Double] {
        var results = [Double](x)
        vvlog(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func log2(x: [Double]) -> [Double] {
        var results = [Double](x)
        vvlog2(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func log10(x: [Double]) -> [Double] {
        var results = [Double](x)
        vvlog10(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func logb(x: [Double]) -> [Double] {
        var results = [Double](x)
        vvlogb(&results, x, [Int32(x.count)])
        
        return results
    }
    
}

extension Float : VectorExponential {
    
    public static func exp(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvexpf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func exp2(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvexp2f(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func log(x: [Float]) -> [Float] {
        var results = [Float](x)
        vvlogf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func log2(x: [Float]) -> [Float] {
        var results = [Float](x)
        vvlog2f(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func log10(x: [Float]) -> [Float] {
        var results = [Float](x)
        vvlog10f(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func logb(x: [Float]) -> [Float] {
        var results = [Float](x)
        vvlogbf(&results, x, [Int32(x.count)])
        
        return results
    }
    
}
