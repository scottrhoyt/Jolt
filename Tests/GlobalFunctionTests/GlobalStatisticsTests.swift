//
//  GlobalStatisticsCalls.swift
//  Jolt
//
//  Created by Scott Hoyt on 10/2/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Jolt

class GlobalStatisticsTests: XCTestCase {

    let testVector = [StatisticsCalls]()
    
    func test_calls_sum() {
        XCTAssertEqual(StatisticsCalls.Sum, sum(testVector))
    }
    
    func test_calls_mean() {
        XCTAssertEqual(StatisticsCalls.Mean, mean(testVector))
    }
    
    func test_calls_min() {
        XCTAssertEqual(StatisticsCalls.Min, min(testVector))
    }
    
    func test_calls_max() {
        XCTAssertEqual(StatisticsCalls.Max, max(testVector))
    }
    
    func test_calls_normalize() {
        XCTAssertEqual(StatisticsCalls.Normalize, normalize(testVector)[0])
    }
    
    func test_calls_variance() {
        XCTAssertEqual(StatisticsCalls.Variance, variance(testVector))
    }
    
    func test_calls_stdev() {
        XCTAssertEqual(StatisticsCalls.Stdev, stdev(testVector))
    }
    
    func test_calls_covariance() {
        XCTAssertEqual(StatisticsCalls.Covariance, covariance(testVector, testVector))
    }
    
    func test_calls_correlation() {
        XCTAssertEqual(StatisticsCalls.Correlation, correlation(testVector, testVector))
    }

}
