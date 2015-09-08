//
//  FloatingTypePowerExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public extension VectorPower where Self : FloatLiteralConvertible {
    static func sqrt(x: [Self]) -> [Self] {
        // TODO: Can we leverage FloatLiteralConvertible and Double optimization?
        return Self.power(x, 0.5)
    }
}

extension Double : VectorPower {
    
    public static func power(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvpow(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
    public func sqrt(x: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvsqrt(&results, x, [Int32(x.count)])
        
        return results
    }
    
}

extension Float : VectorPower {
    
    public static func power(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvpowf(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
    public static func sqrt(x: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvsqrtf(&results, x, [Int32(x.count)])
        
        return results
    }
    
}