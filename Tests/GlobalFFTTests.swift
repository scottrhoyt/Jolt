//
//  GlobalFFTTests.swift
//  Surge
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class GlobalFFTTests: XCTestCase {

    let testVector = [FFTCalls]()
    
    func test_calls_fft() {
        XCTAssertEqual(FFTCalls.FFT, fft(testVector)[0])
    }

}
