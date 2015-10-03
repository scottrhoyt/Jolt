//
//  PowerCalls.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import Jolt

enum PowerCalls : VectorPower {
    
    case Pow, Pow2, Sqrt, None
    
    static func pow(x: [PowerCalls], _ y: [PowerCalls]) -> [PowerCalls] {
        return [.Pow]
    }
    
    static func sqrt(x: [PowerCalls]) -> [PowerCalls] {
        return [.Sqrt]
    }
    
    static func pow(x: [PowerCalls], _ y: PowerCalls) -> [PowerCalls] {
        return [.Pow2]
    }
    
}

