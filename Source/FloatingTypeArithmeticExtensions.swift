//
//  FloatingTypeExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import Accelerate

extension VectorArithmetic where Self : FloatLiteralConvertible {
    
    public static func zero() -> Self {
        return 0.0
    }
    
    public static func one() -> Self {
        return 1.0
    }
    
    public static func negativeOne() -> Self {
        return -1.0
    }
    
}

extension Double : VectorArithmetic {
    
    public static func add(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](y)
        cblas_daxpy(Int32(x.count), 1.0, x, 1, &results, 1)
        
        return results
    }
    
    public static func mul(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vDSP_vmulD(x, 1, y, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func div(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvdiv(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
    public static func mod(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvfmod(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
    public static func remainder(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvremainder(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
}

extension Float : VectorArithmetic {
    
    public static func add(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](y)
        cblas_saxpy(Int32(x.count), 1.0, x, 1, &results, 1)
        
        return results
    }
    
    public static func mul(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vDSP_vmul(x, 1, y, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func div(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvdivf(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
    public static func mod(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvfmodf(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
    public static func remainder(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvremainderf(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
}