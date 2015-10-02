//
//  ExponentialCalls.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Surge

enum ExponentialCalls : VectorExponential {
    
    case Exp, Exp2, Log, Log2, Log10, Logb
    
    static func exp(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Exp]
    }
    
    static func exp2(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Exp2]
    }
    
    static func log(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Log]
    }
    
    static func log2(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Log2]
    }
    
    static func log10(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Log10]
    }
    
    static func logb(x: [ExponentialCalls]) -> [ExponentialCalls] {
        return [.Logb]
    }
    
}