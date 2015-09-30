//
//  FloatingTypeExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import Accelerate

extension Double : VectorArithmetic {
    
    public static func add(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](y)
        vDSP_vaddD(x, 1, y, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func add(x: [Double], _ y: Double) -> [Double] {
        var results = [Double](x)
        var operand = y
        vDSP_vsaddD(x, 1, &operand, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func sub(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](x)
        vDSP_vsubD(y, 1, x, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func sub(x: [Double], _ y: Double) -> [Double] {
        var results = [Double](x)
        var operand = -y
        vDSP_vsaddD(x, 1, &operand, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func sub(x: Double, _ y: [Double]) -> [Double] {
        var results = [Double](y)
        var operand = x
        var scalar: Double = -1
        vDSP_vsmsaD(y, 1, &scalar, &operand, &results, 1, vDSP_Length(y.count))
        
        return results
    }
    
    public static func mul(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vDSP_vmulD(x, 1, y, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func mul(x: [Double], _ y: Double) -> [Double] {
        var results = [Double](x)
        var operand = y
        vDSP_vsmulD(x, 1, &operand, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func div(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvdiv(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
    public static func div(x: [Double], _ y: Double) -> [Double] {
        var results = [Double](x)
        var operand = y
        vDSP_vsdivD(x, 1, &operand, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func div(x: Double, _ y: [Double]) -> [Double] {
        var results = [Double](y)
        var operand = x
        vDSP_svdivD(&operand, y, 1, &results, 1, vDSP_Length(y.count))
        
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
        vDSP_vadd(x, 1, y, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func add(x: [Float], _ y: Float) -> [Float] {
        var results = [Float](x)
        var operand = y
        vDSP_vsadd(x, 1, &operand, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func sub(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](x)
        vDSP_vsub(y, 1, x, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func sub(x: [Float], _ y: Float) -> [Float] {
        var results = [Float](x)
        var operand = -y
        vDSP_vsadd(x, 1, &operand, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func sub(x: Float, _ y: [Float]) -> [Float] {
        var results = [Float](y)
        var operand = x
        var scalar: Float = -1
        vDSP_vsmsa(y, 1, &scalar, &operand, &results, 1, vDSP_Length(y.count))
        
        return results
    }
    
    public static func mul(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vDSP_vmul(x, 1, y, 1, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func mul(x: [Float], _ y: Float) -> [Float] {
        var results = [Float](x)
        var operand = y
        vDSP_vsmul(x, 1, &operand, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func div(x: [Float], _ y: Float) -> [Float] {
        var results = [Float](x)
        var operand = y
        vDSP_vsdiv(x, 1, &operand, &results, 1, vDSP_Length(x.count))
        
        return results
    }
    
    public static func div(x: Float, _ y: [Float]) -> [Float] {
        var results = [Float](y)
        var operand = x
        vDSP_svdiv(&operand, y, 1, &results, 1, vDSP_Length(y.count))
        
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