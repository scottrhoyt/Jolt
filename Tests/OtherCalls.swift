//
//  OtherCalls.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import Surge

enum OtherCalls : VectorOther {
    
    case Asum, Meamg, Measq, None
    
    static func asum(x: [OtherCalls]) -> OtherCalls {
        return .Asum
    }
    
    static func meamg(x: [OtherCalls]) -> OtherCalls {
        return .Meamg
    }
    
    static func measq(x: [OtherCalls]) -> OtherCalls {
        return .Measq
    }
    
}