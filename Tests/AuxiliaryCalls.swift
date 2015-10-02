//
//  AuxiliaryCalls.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Surge

enum AuxiliaryCalls : VectorAuxiliary {
    
    case Ceil, Floor, Clip, Threshold, Abs, CopySign, Neg, Rec, Round, Trunc
    
    static func ceil(x: [AuxiliaryCalls]) -> [AuxiliaryCalls] {
        return [.Ceil]
    }
    
    static func floor(x: [AuxiliaryCalls]) -> [AuxiliaryCalls] {
        return [.Floor]
    }
    
    static func clip(x: [AuxiliaryCalls], _ low: AuxiliaryCalls, _ high: AuxiliaryCalls) -> [AuxiliaryCalls] {
        return [.Clip]
    }
    
    static func threshold(x: [AuxiliaryCalls], _ low: AuxiliaryCalls) -> [AuxiliaryCalls] {
        return [.Threshold]
    }
    
    static func abs(x: [AuxiliaryCalls]) -> [AuxiliaryCalls] {
        return [.Abs]
    }
    
    static func copysign(x: [AuxiliaryCalls], _ magnitude: [AuxiliaryCalls]) -> [AuxiliaryCalls] {
        return [.CopySign]
    }
    
    static func neg(x: [AuxiliaryCalls]) -> [AuxiliaryCalls] {
        return [.Neg]
    }
    
    static func rec(x: [AuxiliaryCalls]) -> [AuxiliaryCalls] {
        return [.Rec]
    }
    
    static func round(x: [AuxiliaryCalls]) -> [AuxiliaryCalls] {
        return [.Round]
    }
    
    static func trunc(x: [AuxiliaryCalls]) -> [AuxiliaryCalls] {
        return [.Trunc]
    }
    
}