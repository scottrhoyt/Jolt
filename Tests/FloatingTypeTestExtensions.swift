//
//  FloatingTypeTestExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/24/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

protocol FloatingPointAccuracy : FloatingPointType {
    static var accuracy: Self { get }
}

protocol GenRandom {
    static func rand(lowerBound: Self?, upperBound: Self?) -> Self
}

extension Double : FloatingPointAccuracy, GenRandom {
    
    static var accuracy: Double {
        return 0.000001
    }
    
    static func rand(lowerBound: Double? = nil, upperBound: Double? = nil) -> Double {
        let r = Double(arc4random()) / Double(UInt32.max)
        if let lb = lowerBound, ub = upperBound {
            return (r * (ub - lb)) + lb
        }
        return r
    }
}

extension Float : FloatingPointAccuracy, GenRandom {
    
    static var accuracy: Float {
        return 0.0001
    }
    
    static func rand(lowerBound: Float? = nil, upperBound: Float? = nil) -> Float {
        let r = Float(arc4random()) / Float(UInt32.max)
        if let lb = lowerBound, ub = upperBound {
            return (r * (ub - lb)) + lb
        }
        return r
    }
}