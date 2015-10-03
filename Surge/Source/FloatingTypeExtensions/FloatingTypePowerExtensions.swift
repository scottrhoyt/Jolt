//
//  FloatingTypePowerExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//


import Accelerate

// TODO: Uncomment
//public extension VectorPower where Self : FloatLiteralConvertible {
//    static func sqrt(x: [Self]) -> [Self] {
//        // TODO: Can we leverage FloatLiteralConvertible and Double optimization?
//        return Self.pow(x, 0.5)
//    }
//}

extension Double : VectorPower {
    
    public static func pow(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvpow(&results, y, x, [Int32(x.count)])
        
        return results
    }
    
    public static func sqrt(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvsqrt(&results, x, [Int32(x.count)])
        
        return results
    }
    
}

extension Float : VectorPower {
    
    public static func pow(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvpowf(&results, y, x, [Int32(x.count)])
        
        return results
    }
    
    public static func sqrt(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvsqrtf(&results, x, [Int32(x.count)])
        
        return results
    }
    
}