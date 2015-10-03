//
//  ArrayStatiscticsExtensions.swift
//  Jolt
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class ArrayStatiscticsExtensions: XCTestCase {
    
    let testVector = [StatisticsCalls]()

    func test_calls_sum() {
        XCTAssertEqual(StatisticsCalls.Sum, testVector.sum())
    }
    
    func test_calls_mean() {
        XCTAssertEqual(StatisticsCalls.Mean, testVector.mean())
    }
    
    func test_calls_min() {
        XCTAssertEqual(StatisticsCalls.Min, testVector.min())
    }
    
    func test_calls_max() {
        XCTAssertEqual(StatisticsCalls.Max, testVector.max())
    }
    
    func test_calls_normalize() {
        XCTAssertEqual(StatisticsCalls.Normalize, testVector.normalize()[0])
    }
    
    func test_calls_variance() {
        XCTAssertEqual(StatisticsCalls.Variance, testVector.variance())
    }
    
    func test_calls_stdev() {
        XCTAssertEqual(StatisticsCalls.Stdev, testVector.stdev())
    }
    
    func test_calls_covariance() {
        XCTAssertEqual(StatisticsCalls.Covariance, testVector.covariance(testVector))
    }
    
    func test_calls_correlation() {
        XCTAssertEqual(StatisticsCalls.Correlation, testVector.correlation(testVector))
    }

}
