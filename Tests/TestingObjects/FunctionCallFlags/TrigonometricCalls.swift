//
//  TrigonometricCalls.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import Foundation
import Jolt

enum TrigonometricCalls : VectorTrigonometric {
    
    case Cos, Sin, Tan, Acos, Asin, Atan, Deg2Rad, Rad2Deg, SinCos, None
    
    static func cos(x: [TrigonometricCalls]) -> [TrigonometricCalls] {
        return [.Cos]
    }
    
    static func sin(x: [TrigonometricCalls]) -> [TrigonometricCalls] {
        return [.Sin]
    }
    
    static func tan(x: [TrigonometricCalls]) -> [TrigonometricCalls] {
        return [.Tan]
    }
    
    static func acos(x: [TrigonometricCalls]) -> [TrigonometricCalls] {
        return [.Acos]
    }
    
    static func asin(x: [TrigonometricCalls]) -> [TrigonometricCalls] {
        return [.Asin]
    }
    
    static func atan(x: [TrigonometricCalls]) -> [TrigonometricCalls] {
        return [.Atan]
    }
    
    static func deg2rad(x: [TrigonometricCalls]) -> [TrigonometricCalls] {
        return [.Deg2Rad]
    }
    
    static func rad2deg(x: [TrigonometricCalls]) -> [TrigonometricCalls] {
        return [.Rad2Deg]
    }
    
    static func sincos(x: [TrigonometricCalls]) -> (sin: [TrigonometricCalls], cos: [TrigonometricCalls]) {
        return ([.SinCos], [.SinCos])
    }
    
}