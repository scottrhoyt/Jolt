//
//  HyperbolicCalls.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import Surge

enum HyperbolicCalls : VectorHyperbolic {
    
    case Cosh, Sinh, Tanh, Acosh, Asinh, Atanh
    
    static func cosh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Cosh]
    }
    
    static func sinh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Sinh]
    }
    
    static func tanh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Tanh]
    }
    
    static func acosh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Acosh]
    }
    
    static func asinh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Asinh]
    }
    
    static func atanh(x: [HyperbolicCalls]) -> [HyperbolicCalls] {
        return [.Atanh]
    }
    
}