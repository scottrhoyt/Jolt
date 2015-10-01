//
//  ArrayFFTExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//



extension Array where Element : VectorFFT {
    
    public func fft() -> [Element] {
        return Element.fft(self)
    }
    
}