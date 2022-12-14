//
//  AnalyticsManager.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

import Foundation

public class AnalyticsManager : _AnalyticsManager {
    
    required public init(engines: [_AnalyticsEngine]) {
        self.engines = engines
    }
    
    public func report(_ event: _AnalyticsEvent) {
        engines.forEach {
            $0.reportEvent(name: event.name, metadata: event.metadata)
        }
    }
    
    public func report(_ error: _AnalyticsError) {
        engines.forEach {
            $0.reportError!(id: error.id, message: error.message, metadata: error.metadata)
        }
    }
    
    public func report(_ revenue: _AnalyticsRevenueEvent) {
        engines.forEach {
            $0.reportRevenue!(id: revenue.id, price: revenue.price, currency: revenue.currency, quantity: revenue.quantity)
        }
    }
    
    public func report(_ profileInfo: (key: _AnalyticsProfileInfo, value: Any)) {
        engines.forEach {
            $0.reportProfile!(profileInfo: profileInfo.key, with: profileInfo.value)
        }
    }
    
    private let engines : [_AnalyticsEngine]
}
