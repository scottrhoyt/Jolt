//
//  ArrayStatiscticsExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//

import XCTest
import Surge

class ArrayStatiscticsExtensions: XCTestCase {

    func test_calls_sum() {
        XCTAssertEqual(StatisticsCalls.Sum, [StatisticsCalls]().sum())
    }
    
    func test_calls_mean() {
        XCTAssertEqual(StatisticsCalls.Mean, [StatisticsCalls]().mean())
    }
    
    func test_calls_min() {
        XCTAssertEqual(StatisticsCalls.Min, [StatisticsCalls]().min())
    }
    
    func test_calls_max() {
        XCTAssertEqual(StatisticsCalls.Max, [StatisticsCalls]().max())
    }
    
    func test_calls_normalize() {
        XCTAssertEqual(StatisticsCalls.Normalize, [StatisticsCalls]().normalize()[0])
    }
    
    func test_calls_variance() {
        XCTAssertEqual(StatisticsCalls.Variance, [StatisticsCalls]().variance())
    }
    
    func test_calls_stdev() {
        XCTAssertEqual(StatisticsCalls.Stdev, [StatisticsCalls]().stdev())
    }
    
    func test_calls_covariance() {
        XCTAssertEqual(StatisticsCalls.Covariance, [StatisticsCalls]().covariance([StatisticsCalls]()))
    }
    
    func test_calls_correlation() {
        XCTAssertEqual(StatisticsCalls.Correlation, [StatisticsCalls]().correlation([StatisticsCalls]()))
    }

}
