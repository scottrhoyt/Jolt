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
    static func rand() -> Self
    static func rand(lowerBound: Self, upperBound: Self) -> Self
}

extension Double : FloatingPointAccuracy, GenRandom {
    
    static var accuracy: Double {
        return 0.000001
    }
    
    static func rand() -> Double {
        return Double(arc4random())
    }
    
    static func rand(lowerBound: Double, upperBound: Double) -> Double {
        let r = Double(arc4random()) / Double(UInt64.max)
        return (r * (upperBound - lowerBound)) + lowerBound
    }
}

extension Float : FloatingPointAccuracy, GenRandom {
    
    static var accuracy: Float {
        return 0.0001
    }
    
    static func rand() -> Float {
        return Float(arc4random())
    }
    
    static func rand(lowerBound: Float, upperBound: Float) -> Float {
        let r = Float(arc4random()) / Float(UInt32.max)
        return (r * (upperBound - lowerBound)) + lowerBound
    }
}