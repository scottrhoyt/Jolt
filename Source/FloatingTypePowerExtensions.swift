//
//  FloatingTypePowerExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

extension Double : VectorPower {
    
    public static func power(x: [Double], _ y: [Double]) -> [Double] {
        var results = [Double](count: x.count, repeatedValue: 0.0)
        vvpow(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
}

extension Float : VectorPower {
    
    public static func power(x: [Float], _ y: [Float]) -> [Float] {
        var results = [Float](count: x.count, repeatedValue: 0.0)
        vvpowf(&results, x, y, [Int32(x.count)])
        
        return results
    }
    
}