//
//  ArrayFFTExtensionsTests.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

class ArrayFFTExtensionsTests: XCTestCase {

    func test_calls_fft() {
        XCTAssertEqual(FFTCalls.FFT, [FFTCalls]().fft()[0])
    }

}
