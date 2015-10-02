//
//  ArithmeticCalls.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import Surge

enum ArithmeticCalls : VectorArithmetic {
    
    case Add1, Add2, Sub1, Sub2, Sub3, Mul1, Mul2, Div1, Div2, Div3, Mod1, Mod2, Mod3, Remainder1, Remainder2, Remainder3, Zero, One, NegativeOne, None
    
    static func add(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Add1]
    }
    
    static func add(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Add2]
    }
    
    static func sub(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Sub1]
    }
    
    static func sub(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Sub2]
    }
    
    static func sub(x: ArithmeticCalls, _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Sub3]
    }
    
    static func mul(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Mul1]
    }
    
    static func mul(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Mul2]
    }
    
    static func div(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Div1]
    }
    
    static func div(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Div2]
    }
    
    static func div(x: ArithmeticCalls, _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Div3]
    }
    
    static func mod(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Mod1]
    }
    
    static func remainder(x: [ArithmeticCalls], _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Remainder1]
    }
    
    static func mod(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Mod2]
    }
    
    static func mod(x: ArithmeticCalls, _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Mod3]
    }
    
    static func remainder(x: [ArithmeticCalls], _ y: ArithmeticCalls) -> [ArithmeticCalls] {
        return [.Remainder2]
    }
    
    static func remainder(x: ArithmeticCalls, _ y: [ArithmeticCalls]) -> [ArithmeticCalls] {
        return [.Remainder3]
    }
    
}