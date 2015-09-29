//
//  ArrayStatiscticsExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/29/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//

import XCTest
import Surge

private enum StatisticsCalls : VectorStatistics {
    
    case Sum, Mean, Min, Max, Normalize, Variance, Stdev, Covariance, Correlation
    
    static func sum(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Sum
    }
    
    static func mean(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Mean
    }
    
    static func min(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Min
    }
    
    static func max(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Max
    }
    
    static func normalize(x: [StatisticsCalls]) -> [StatisticsCalls] {
        return [.Normalize]
    }
    
    static func variance(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Variance
    }
    
    static func stdev(x: [StatisticsCalls]) -> StatisticsCalls {
        return .Stdev
    }
    
    static func covariance(x: [StatisticsCalls], _ y: [StatisticsCalls]) -> StatisticsCalls {
        return .Covariance
    }
    
    static func correlation(x: [StatisticsCalls], _ y: [StatisticsCalls]) -> StatisticsCalls {
        return .Correlation
    }
    
}

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
