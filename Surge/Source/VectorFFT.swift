//
//  VectorFFT.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



public protocol VectorFFT {
    
    // MARK: - To Overload
    static func fft(input: [Self]) -> [Self]
    
}