//
//  FloatingTypeHyperbolicExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import Accelerate

extension Double : VectorHyperbolic {
    
    public static func sinh(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvsinh(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func cosh(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvcosh(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func tanh(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvtanh(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func asinh(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvasinh(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func acosh(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvacosh(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func atanh(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvatanh(&results, x, [Int32(x.count)])
        
        return results
    }
    
}

extension Float : VectorHyperbolic {
    
    public static func sinh(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvsinhf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func cosh(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvcoshf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func tanh(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvtanhf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func asinh(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvasinhf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func acosh(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvacoshf(&results, x, [Int32(x.count)])
        
        return results
    }
    
    public static func atanh(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvatanhf(&results, x, [Int32(x.count)])
        
        return results
    }
    
}
