//
//  VectorFFT.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Foundation

public protocol VectorFFT {
    
    // MARK: - To Overload
    static func fft(input: [Self]) -> [Self]
    
}