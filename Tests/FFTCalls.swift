//
//  FFTCalls.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import Surge

enum FFTCalls : VectorFFT {
    case FFT
    
    static func fft(input: [FFTCalls]) -> [FFTCalls] {
        return [.FFT]
    }
}