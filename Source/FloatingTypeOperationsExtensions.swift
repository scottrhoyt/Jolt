//
//  FloatingTypeOperationsExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/8/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation
import Accelerate

extension Double : VectorOperations {
    
    public static func magnitude(x: [Double]) -> Double {
        // FIXME: Is there a more effienct vector function?
        var result: Double = 0.0
        vDSP_svesqD(x, 1, &result, vDSP_Length(x.count))
        
        return Foundation.sqrt(result)
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
        // FIXME: Is there a more effienct vector function?
        var result: Float = 0.0
        vDSP_svesq(x, 1, &result, vDSP_Length(x.count))

        return Foundation.sqrt(result)
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