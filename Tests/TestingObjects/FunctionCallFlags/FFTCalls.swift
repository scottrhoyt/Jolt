//
//  FFTCalls.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import Jolt

enum FFTCalls : VectorFFT {
    case FFT, None
    
    static func fft(input: [FFTCalls]) -> [FFTCalls] {
        return [.FFT]
    }
}