//
//  FloatingTypeOperationsExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//


import Accelerate

extension Double : VectorOperations {
    
    public static func magnitude(x: [Double]) -> Double {
        return cblas_dnrm2(Int32(x.count), x, 1)
    }
    
    public static func unit(x: [Double]) -> [Double] {
        // FIXME: Can a vecLib function like vSnorm2 be used?
        return Double.div(x, [Double](count: x.count, repeatedValue:magnitude(x)))
    }
    
    public static func dot(x: [Double], _ y: [Double]) -> Double {
        precondition(x.count == y.count, "Vectors must have equal count")
        
        var result: Double = 0.0
        vDSP_dotprD(x, 1, y, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
}

extension Float : VectorOperations {
    
    public static func magnitude(x: [Float]) -> Float {
        return cblas_snrm2(Int32(x.count), x, 1)
    }
    
    public static func unit(x: [Float]) -> [Float] {
        // FIXME: Can a vecLib function like vSnorm2 be used?
        return Float.div(x, [Float](count: x.count, repeatedValue:magnitude(x)))
    }
    
    public static func dot(x: [Float], _ y: [Float]) -> Float {
        precondition(x.count == y.count, "Vectors must have equal count")
        
        var result: Float = 0.0
        vDSP_dotpr(x, 1, y, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
}