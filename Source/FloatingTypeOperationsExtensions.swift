//
//  FloatingTypeOperationsExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

extension Double : VectorOperations {
    
    public static func magnitude(x: [Double]) -> Double {
        // TODO: Use Array Extensions
        // TODO: Is Foundation necessary?
        // FIXME: Is there a more effienct way?
        return Foundation.sqrt(Double.sum(Double.power(x, 2.0)))
    }
    
    public static func unit(x: [Double]) -> [Double] {
        // FIXME: Is there a more effienct way?
        return x / magnitude(x)
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
        // TODO: Use Array Extensions
        // TODO: Is Foundation necessary?
        return Foundation.sqrt(Float.sum(Float.power(x, 2.0)))
    }
    
    public static func unit(x: [Float]) -> [Float] {
        // FIXME: Is there a more effienct way?
        return x / magnitude(x)
    }
    
    public static func dot(x: [Float], _ y: [Float]) -> Float {
        precondition(x.count == y.count, "Vectors must have equal count")
        
        var result: Float = 0.0
        vDSP_dotpr(x, 1, y, 1, &result, vDSP_Length(x.count))
        
        return result
    }
    
}