//
//  GlobalFFTTests.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class GlobalFFTTests: XCTestCase {

    let testVector = [FFTCalls]()
    
    func test_calls_fft() {
        XCTAssertEqual(FFTCalls.FFT, fft(testVector)[0])
    }

}
