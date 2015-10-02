//
//  OperationsCalls.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Surge

enum OperationsCalls : VectorOperations {
    
    case Dot, Magnitude, Unit
    
    static func dot(x: [OperationsCalls], _ y: [OperationsCalls]) -> OperationsCalls {
        return .Dot
    }
    
    static func magnitude(x: [OperationsCalls]) -> OperationsCalls {
        return .Magnitude
    }
    
    static func unit(x: [OperationsCalls]) -> [OperationsCalls] {
        return [.Unit]
    }
    
}
