//
//  ArrayStatisticsExtensions.swift
//  Surge
//
//  Created by Scott Hoyt on 9/10/15.
//  Copyright © 2015 Scott Hoyt. All rights reserved.
//



extension Array where Element : VectorStatistics {
    
    public func sum() -> Element {
        return Element.sum(self)
    }
    
    public func min() -> Element {
        return Element.min(self)
    }

    public func max() -> Element {
        return Element.max(self)
    }

    public func mean() -> Element {
        return Element.mean(self)
    }

    public func normalize() -> [Element] {
        return Element.normalize(self)
    }

    public func variance() -> Element {
        return Element.variance(self)
    }

    public func stdev() -> Element {
        return Element.stdev(self)
    }

    public func covariance(y: [Element]) -> Element {
        return Element.covariance(self, y)
    }

    public func correlation(y: [Element]) -> Element {
        return Element.correlation(self, y)
    }
    
}
