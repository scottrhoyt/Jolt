//
//  Statistics.swift
//  Surge
//
//  Created by Scott Hoyt on 10/1/15.
//  Copyright © 2015 Mattt Thompson. All rights reserved.
//


public func sum<T: VectorStatistics>(x:  [T]) -> T {
    return T.sum(x)
}

public func max<T: VectorStatistics>(x:  [T]) -> T {
    return T.max(x)
}

public func min<T: VectorStatistics>(x:  [T]) -> T {
    return T.min(x)
}

public func mean<T: VectorStatistics>(x:  [T]) -> T {
    return T.mean(x)
}

public func stdev<T: VectorStatistics>(x:  [T]) -> T {
    return T.stdev(x)
}

public func normalize<T: VectorStatistics>(x:  [T]) -> [T] {
    return T.normalize(x)
}

public func variance<T: VectorStatistics>(x:  [T]) -> T {
    return T.variance(x)
}

public func covariance<T: VectorStatistics>(x:  [T], _ y: [T]) -> T {
    return T.covariance(x, y)
}

public func correlation<T: VectorStatistics>(x:  [T], _ y: [T]) -> T {
    return T.correlation(x, y)
}
