//
//  ArrayArithmeticExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/7/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

// TODO: Add rest of Arithmetic functions

extension Array where Element : VectorArithmetic {
    public init(negativeOnes: Int) {
        self = Element.negativeOnes(negativeOnes)
    }
    
    public func add(y: [Element]) -> [Element] {
        return Element.add(self, y)
    }
}