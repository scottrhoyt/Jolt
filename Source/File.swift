//
//  File.swift
//  Surge
//
//  Created by Scott Hoyt on 9/22/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public typealias VectorAll = protocol<VectorPower>

public protocol DoubleConvertible : VectorAll {
    func toDouble() -> Double
    static func fromDouble(value: Double) -> Self
}

extension Array where Element : DoubleConvertible {
    
    func toDoubleArray() -> [Double] {
        return self.map( { return $0.toDouble() } )
    }
    
    static func fromDoubleArray(x: [Double]) -> [Element] {
        return x.map({ return Element.fromDouble($0) })
    }
    
}

extension DoubleConvertible {
    // MARK: To Overload
    public static func power(x: [Self], _ y: [Self]) -> [Self] {
        return [Self].fromDoubleArray(Double.power(x.toDoubleArray(), y.toDoubleArray()))
    }
    
    // MARK: Overload if not FloatLiteralConvertible, Optional Otherwise
    public static func sqrt(x: [Self]) -> [Self] {
        return [Self].fromDoubleArray(Double.sqrt(x.toDoubleArray()))
    }
    
}